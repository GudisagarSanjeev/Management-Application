#ifndef TIMEINFO_H
#define TIMEINFO_H
#include <QString>
class TimeInfo
{
public:
    TimeInfo();
    TimeInfo(QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,QString);


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

    QString getLots() const;
    void setLots(const QString &value);

    QString getStartdate() const;
    void setStartdate(const QString &value);

    QString getEnddate() const;
    void setEnddate(const QString &value);

    QString getClotsusage() const;
    void setClotsusage(const QString &value);

    QString getRem() const;
    void setRem(const QString &value);

    QString getRempoamt() const;
    void setRempoamt(const QString &value);

    QString getId() const;
    void setId(const QString &value);

private:
    QString id;
    QString resourcename;
    QString company;
    QString reportingmngr;
    QString pmo;
    QString ponumber;
    QString lots;
    QString startdate;
    QString enddate;
    QString clotsusage;
    QString rem;
    QString rempoamt;

};

#endif // TIMEINFO_H
