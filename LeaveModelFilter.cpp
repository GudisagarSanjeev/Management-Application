#include "LeaveModelFilter.h"
static DataBaseInteractions *db=NULL;
LeaveModelFilter::LeaveModelFilter()
{
    db=DataBaseInteractions::Dbsingleton();
    //    db=new DataBaseInteractions;
}

LeaveModelFilter::~LeaveModelFilter()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    delete db;
}

void LeaveModelFilter::dataa(QString id)
{
    leavefilterinfo.clear();

    QList<QStringList> info=db->viewLeavedetailsFilters(id);
    this->beginResetModel();

    for(int i=0;i<info.count();i++){
        setFilterData(info.at(i).at(4),info.at(i).at(0),info.at(i).at(1),info.at(i).at(2),info.at(i).at(3));
    }
    this->endResetModel();
}

void LeaveModelFilter::setFilterData(QString empid,QString name, QString startday, QString endday, QString remark)
{
    beginInsertRows(QModelIndex(), leavefilterinfo.count(), leavefilterinfo.count());

    qDebug()<<leavefilterinfo.count()<<"count begining"<<endl;
    leavefilterinfo << LeaveModelFilterInfo(empid,name,startday,endday,remark);
    qDebug()<<leavefilterinfo.count()<<"count at end"<<endl;

    endInsertRows();
}

int LeaveModelFilter::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return leavefilterinfo.count();
}

QVariant LeaveModelFilter::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=leavefilterinfo.count())
        return QVariant();

    const LeaveModelFilterInfo &info=leavefilterinfo[index.row()];
    if(role==EEMPLOYEEID)
        return info.getEmpid();
    else if(role==ENAME)
        return info.getName();
    else if(role==ESTARTDAY)
        return info.getStartday();
    else if(role==EENDDAY)
        return info.getEndday();
    else if(role==EREMARK)
        return info.getRemark();

    return QVariant();
}

QHash<int, QByteArray> LeaveModelFilter::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[ENAME]="ename";
    roles[ESTARTDAY]="estartday";
    roles[EENDDAY]="eendday";
    roles[EREMARK]="eremark";
    roles[EEMPLOYEEID]="eempid";

    return roles;
}
