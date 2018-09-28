#ifndef LEAVEINFO_H
#define LEAVEINFO_H

#include <QObject>
class LeaveInfo
{
public:
    LeaveInfo();
    LeaveInfo(QString,QString,QString,QString,QString,QString);
    QString getName() const;
    void setName(const QString &value);

    QString getDays() const;
    void setDays(const QString &value);

    QString getStartday() const;
    void setStartday(const QString &value);

    QString getEndday() const;
    void setEndday(const QString &value);

    QString getRemark() const;
    void setRemark(const QString &value);

    QString getEmpid() const;
    void setEmpid(const QString &value);

private:
    QString empid;
    QString name;
    QString days;
    QString startday;
    QString endday;
    QString remark;
};

#endif // LEAVEINFO_H
