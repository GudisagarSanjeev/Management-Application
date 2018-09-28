#include "LeaveInfo.h"

LeaveInfo::LeaveInfo()
{

}

LeaveInfo::LeaveInfo(QString name, QString days, QString startday, QString endday, QString remark, QString empid)
{
    setName(name);
    setDays(days);
    setStartday(startday);
    setEndday(endday);
    setRemark(remark);
    setEmpid(empid);
}

QString LeaveInfo::getName() const
{
    return name;
}

void LeaveInfo::setName(const QString &value)
{
    name = value;
}

QString LeaveInfo::getDays() const
{
    return days;
}

void LeaveInfo::setDays(const QString &value)
{
    days = value;
}

QString LeaveInfo::getStartday() const
{
    return startday;
}

void LeaveInfo::setStartday(const QString &value)
{
    startday = value;
}

QString LeaveInfo::getEndday() const
{
    return endday;
}

void LeaveInfo::setEndday(const QString &value)
{
    endday = value;
}

QString LeaveInfo::getRemark() const
{
    return remark;
}

void LeaveInfo::setRemark(const QString &value)
{
    remark = value;
}

QString LeaveInfo::getEmpid() const
{
    return empid;
}

void LeaveInfo::setEmpid(const QString &value)
{
    empid = value;
}
