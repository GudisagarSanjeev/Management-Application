#ifndef MANAGEMENTINFO_H
#define MANAGEMENTINFO_H
#include <QString>
class ManagementInfo
{
public:
    ManagementInfo();
    ManagementInfo(QString,QString,QString,QString,QString,QString,QString,QString,QString,QString);


    QString getResourcename() const;
    void setResourcename(const QString &value);

    QString getCompany() const;
    void setCompany(const QString &value);

    QString getReportingmngr() const;
    void setReportingmngr(const QString &value);

    QString getPmo() const;
    void setPmo(const QString &value);

    QString getPonumber() const;
    void setPonumber(const QString &value);

    QString getPodate() const;
    void setPodate(const QString &value);

    QString getPoendto() const;
    void setPoendto(const QString &value);

    QString getLots() const;
    void setLots(QString &value);

    QString getPerlot() const;
    void setPerlot(const QString &value);

    QString getEmpid() const;
    void setEmpid(const QString &value);

private:
    QString empid;
    QString resourcename;
    QString company;
    QString reportingmngr;
    QString pmo;
    QString ponumber;
    QString podate;
    QString poendto;
    QString lots;
    QString perlot;
};

#endif // MANAGEMENTINFO_H
