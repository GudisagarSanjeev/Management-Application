#ifndef LEAVEMODELFILTERINFO_H
#define LEAVEMODELFILTERINFO_H

#include <QObject>
class LeaveModelFilterInfo
{
public:
    LeaveModelFilterInfo();
    LeaveModelFilterInfo(QString,QString,QString,QString,QString);

    QString getEmpid() const;
    void setEmpid(const QString &value);

    QString getName() const;
    void setName(const QString &value);

    QString getStartday() const;
    void setStartday(const QString &value);

    QString getEndday() const;
    void setEndday(const QString &value);

    QString getRemark() const;
    void setRemark(const QString &value);

private:
    QString empid;
    QString name;
    QString startday;
    QString endday;
    QString remark;
};

#endif // LEAVEMODELFILTERINFO_H
