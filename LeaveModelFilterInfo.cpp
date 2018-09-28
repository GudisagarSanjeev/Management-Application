#include "LeaveModelFilterInfo.h"

LeaveModelFilterInfo::LeaveModelFilterInfo()
{

}

LeaveModelFilterInfo::LeaveModelFilterInfo(QString empid, QString name, QString startday, QString endday, QString remark)
{
    setEmpid(empid);
    setName(name);
    setStartday(startday);
    setEndday(endday);
    setRemark(remark);
}

QString LeaveModelFilterInfo::getEmpid() const
{
    return empid;
}

void LeaveModelFilterInfo::setEmpid(const QString &value)
{
    empid = value;
}

QString LeaveModelFilterInfo::getName() const
{
    return name;
}

void LeaveModelFilterInfo::setName(const QString &value)
{
    name = value;
}

QString LeaveModelFilterInfo::getStartday() const
{
    return startday;
}

void LeaveModelFilterInfo::setStartday(const QString &value)
{
    startday = value;
}

QString LeaveModelFilterInfo::getEndday() const
{
    return endday;
}

void LeaveModelFilterInfo::setEndday(const QString &value)
{
    endday = value;
}

QString LeaveModelFilterInfo::getRemark() const
{
    return remark;
}

void LeaveModelFilterInfo::setRemark(const QString &value)
{
    remark = value;
}
