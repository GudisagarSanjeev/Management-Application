#include "LeaveModel.h"
static DataBaseInteractions *db=NULL;
LeaveModel::LeaveModel()
{
    db=DataBaseInteractions::Dbsingleton();
}

LeaveModel::~LeaveModel()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    delete db;
}

void LeaveModel::addLeave(QString name, QString days, QString startday,QString endday,QString remark,QString empid,bool check)
{
    beginInsertRows(QModelIndex(), leaveinfo.count(), leaveinfo.count());
    if(check)
        db->insertleavedata(name,days,startday,endday,remark,empid);
    leaveinfo << LeaveInfo(name,days,startday,endday,remark,empid);
    endInsertRows();
}

int LeaveModel::rowCount(const QModelIndex &parent) const
{

    Q_UNUSED(parent);
    return leaveinfo.count();
}

QVariant LeaveModel::data(const QModelIndex &index, int role) const
{
    if(index.row()<0 || index.row()>=leaveinfo.count())
        return QVariant();

    const LeaveInfo &info=leaveinfo[index.row()];
    if(role==NAME)
        return info.getName();
    else if(role==DAYS)
        return info.getDays();
    else if(role==STARTDAY)
        return info.getStartday();
    else if(role==ENDDAY)
        return info.getEndday();
    else if(role==REMARK)
        return info.getRemark();
    else if(role==EMPLOYEEID)
        return info.getEmpid();
    return QVariant();
}

void LeaveModel::deleteempleavedetails(QString id)
{
    qDebug()<<id<<endl;
    db->deleteemployee(id);
    for(int i=0;i<leaveinfo.size();i++){
        if(leaveinfo.at(i).getEmpid()==id){
            leaveinfo.removeAt(i);
        }
    }
}

QHash<int, QByteArray> LeaveModel::roleNames() const
{
    QHash<int ,QByteArray> roles;
    roles[NAME]="name";
    roles[DAYS]="days";
    roles[STARTDAY]="startdayy";
    roles[ENDDAY]="enddayy";
    roles[REMARK]="remarkk";
    roles[EMPLOYEEID]="empid";

    return roles;
}


