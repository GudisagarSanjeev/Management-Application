#include "Tmodel.h"
static DataBaseInteractions *db=NULL;
Tmodel::Tmodel()
{
    db=DataBaseInteractions::Dbsingleton();
}

Tmodel::~Tmodel()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    delete db;
}

void Tmodel::addtime(QString id, QString company, QString reportingmngr, QString pmo, QString ponumber, QString lots, QString startdate, QString enddate, QString clotsusage, QString rem,QString rempoamt, bool check)
{
    beginInsertRows(QModelIndex(), timeinfo.count(), timeinfo.count());
    timeinfo << TimeInfo(id,company,reportingmngr,pmo,ponumber,lots,startdate,enddate,clotsusage,rem,rempoamt);
    if(check)
        db->inserttimedata(id,company,reportingmngr,pmo,ponumber,lots,startdate,enddate,clotsusage,rem,rempoamt);
    endInsertRows();
}

int Tmodel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return timeinfo.count();
}

QVariant Tmodel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=timeinfo.count())
        return QVariant();

    const TimeInfo &info=timeinfo[index.row()];
    if(role==RESOURCENAME)
        return info.getResourcename();
    else if(role==COMPANY)
        return info.getCompany();
    else if(role==REPORTINGMGR)
        return info.getReportingmngr();
    else if(role==PMO)
        return info.getPmo();
    else if(role==PONUMBER)
        return info.getPonumber();
    else if(role==LOTS)
        return info.getLots();
    else if(role==STARTDATE)
        return info.getStartdate();
    else if(role==ENDDATE)
        return info.getEnddate();
    else if(role==LOTSUSAGE)
        return info.getClotsusage();
    else if(role==REMAININGLOTS)
        return info.getRem();
    else if(role==REMAININGPOAMT)
        return info.getRempoamt();

    return QVariant();
}

void Tmodel::deleteTimemodel(QString res)
{
    db->deleteemployee(res);
    for(int i=0;i<timeinfo.size();i++){
        if(timeinfo.at(i).getResourcename()==res){
            timeinfo.removeAt(i);
        }
    }
}

void Tmodel::deleteTimeOnlymodel(QString res)
{
    db->deleteemployeeOnly(res);
    for(int i=0;i<timeinfo.size();i++){
        qDebug()<<"Hi"<<endl;
        if(timeinfo.at(i).getResourcename()==res){
            timeinfo.removeAt(i);
        }
    }
}

QHash<int, QByteArray> Tmodel::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[RESOURCENAME]="resourcename";
    roles[COMPANY]="company";
    roles[REPORTINGMGR]="reportingmngr";
    roles[PMO]="pmo";
    roles[PONUMBER]="ponumber";
    roles[LOTS]="lots";
    roles[STARTDATE]="startdate";
    roles[ENDDATE]="enddate";
    roles[LOTSUSAGE]="clotsusage";
    roles[REMAININGLOTS]="rem";
    roles[REMAININGPOAMT]="rempoamt";

    return roles;
}
