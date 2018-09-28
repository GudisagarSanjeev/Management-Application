#include "TimeInfo.h"

TimeInfo::TimeInfo()
{

}

TimeInfo::TimeInfo(QString resourcename, QString company, QString reportingmngr, QString pmo, QString ponumber, QString lots, QString startdate, QString enddate, QString clotsusage, QString rem,   QString rempoamt)
{
    setResourcename(resourcename);
    setCompany(company);
    setReportingmngr(reportingmngr);
    setPmo(pmo);
    setPonumber(ponumber);
    setLots(lots);
    setStartdate(startdate);
    setEnddate(enddate);
    setClotsusage(clotsusage);
    setRem(rem);
    setRempoamt(rempoamt);
}

QString TimeInfo::getResourcename() const
{
    return resourcename;
}

void TimeInfo::setResourcename(const QString &value)
{
    resourcename = value;
}

QString TimeInfo::getCompany() const
{
    return company;
}

void TimeInfo::setCompany(const QString &value)
{
    company = value;
}

QString TimeInfo::getReportingmngr() const
{
    return reportingmngr;
}

void TimeInfo::setReportingmngr(const QString &value)
{
    reportingmngr = value;
}

QString TimeInfo::getPmo() const
{
    return pmo;
}

void TimeInfo::setPmo(const QString &value)
{
    pmo = value;
}

QString TimeInfo::getPonumber() const
{
    return ponumber;
}

void TimeInfo::setPonumber(const QString &value)
{
    ponumber = value;
}

QString TimeInfo::getLots() const
{
    return lots;
}

void TimeInfo::setLots(const QString &value)
{
    lots = value;
}

QString TimeInfo::getStartdate() const
{
    return startdate;
}

void TimeInfo::setStartdate(const QString &value)
{
    startdate = value;
}

QString TimeInfo::getEnddate() const
{
    return enddate;
}

void TimeInfo::setEnddate(const QString &value)
{
    enddate = value;
}

QString TimeInfo::getClotsusage() const
{
    return clotsusage;
}

void TimeInfo::setClotsusage(const QString &value)
{
    clotsusage = value;
}

QString TimeInfo::getRem() const
{
    return rem;
}

void TimeInfo::setRem(const QString &value)
{
    rem = value;
}

QString TimeInfo::getRempoamt() const
{
    return rempoamt;
}

void TimeInfo::setRempoamt(const QString &value)
{
    rempoamt = value;
}






