#include "PeopleModel.h"
static DataBaseInteractions *db=NULL;
PeopleModel::PeopleModel()
{
    db=DataBaseInteractions::Dbsingleton();
    //db=new DataBaseInteractions;
    tmodel=new Tmodel;
}

PeopleModel::~PeopleModel()
{
    delete db;
}

void PeopleModel::updatelots(QString res,QString l)
{
    qDebug()<<Q_FUNC_INFO<<endl;

    db->updatelot(res,l);
    for(int i=0;i<managementinfo.size();i++){
        if(managementinfo.at(i).getEmpid()==res){
            ManagementInfo *mi =  const_cast<ManagementInfo*>(&managementinfo.at(i));
            mi->setLots(l);
        }
    }
}

void PeopleModel::deleteemp(QString id)
{
    db->deleteemployee(id);
    for(int i=0;i<managementinfo.size();i++){
        if(managementinfo.at(i).getEmpid()==id){
            managementinfo.removeAt(i);
        }
    }
}

void PeopleModel::deleteOnlyemp(QString id)
{
    this->beginResetModel();
    //db->deleteemployeeOnly(id);

    for(int i=0;i<managementinfo.size();i++){
        if(managementinfo.at(i).getEmpid()==id){
            managementinfo.removeAt(i);
        }
    }
    this->endResetModel();
}

void PeopleModel::addmanagement(QString empid,QString resourcename, QString company, QString reportingmngr, QString pmo, QString ponumber, QString podate, QString poendto, QString lots,QString perlot,bool check)
{
    beginInsertRows(QModelIndex(), managementinfo.count(), managementinfo.count());
    if(check)
        db->insertmanagementdata(empid,resourcename,company,reportingmngr,pmo,ponumber,podate,poendto,lots,perlot);
    managementinfo << ManagementInfo(empid,resourcename,company,reportingmngr,pmo,ponumber,podate,poendto,lots,perlot);
    endInsertRows();
}

int PeopleModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return managementinfo.count();
}

QVariant PeopleModel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=managementinfo.count())
        return QVariant();

    const ManagementInfo &info=managementinfo[index.row()];
    if(role==empid)
        return info.getEmpid();
    else if(role==resourcename)
        return info.getResourcename();
    else if(role==company)
        return info.getCompany();
    else if(role==reportingmngr)
        return info.getReportingmngr();
    else if(role==pmo)
        return info.getPmo();
    else if(role==ponumber)
        return info.getPonumber();
    else if(role==podate)
        return info.getPodate();
    else if(role==poendto)
        return info.getPoendto();
    else if(role==lots)
        return info.getLots();
    else if(role==perlot)
        return info.getPerlot();
    return QVariant();
}


QHash<int, QByteArray> PeopleModel::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[empid]="empid";
    roles[resourcename]="resourcename";
    roles[company]="company";
    roles[reportingmngr]="reportingmngr";
    roles[pmo]="pmo";
    roles[ponumber]="ponumber";
    roles[podate]="podate";
    roles[poendto]="poendto";
    roles[lots]="lots";
    roles[perlot]="perlot";

    return roles;
}
