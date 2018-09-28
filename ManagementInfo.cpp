#include "ManagementInfo.h"

ManagementInfo::ManagementInfo()
{

}
ManagementInfo::ManagementInfo(QString empid,QString resourcename, QString company, QString reportingmngr, QString pmo, QString ponumber, QString podate, QString poendto, QString lots, QString perlot)
{
    setEmpid(empid);
    setResourcename(resourcename);
    setCompany(company);
    setReportingmngr(reportingmngr);
    setPmo(pmo);
    setPonumber(ponumber);
    setPodate(podate);
    setPoendto(poendto);
    setLots(lots);
    setPerlot(perlot);
}
QString ManagementInfo::getResourcename() const
{
    return resourcename;
}

void ManagementInfo::setResourcename(const QString &value)
{
    resourcename = value;
}

QString ManagementInfo::getCompany() const
{
    return company;
}

void ManagementInfo::setCompany(const QString &value)
{
    company = value;
}

QString ManagementInfo::getReportingmngr() const
{
    return reportingmngr;
}

void ManagementInfo::setReportingmngr(const QString &value)
{
    reportingmngr = value;
}

QString ManagementInfo::getPmo() const
{
    return pmo;
}

void ManagementInfo::setPmo(const QString &value)
{
    pmo = value;
}

QString ManagementInfo::getPonumber() const
{
    return ponumber;
}

void ManagementInfo::setPonumber(const QString &value)
{
    ponumber = value;
}

QString ManagementInfo::getPodate() const
{
    return podate;
}

void ManagementInfo::setPodate(const QString &value)
{
    podate = value;
}

QString ManagementInfo::getPoendto() const
{
    return poendto;
}

void ManagementInfo::setPoendto(const QString &value)
{
    poendto = value;
}

QString ManagementInfo::getLots() const
{
    return lots;
}

void ManagementInfo::setLots( QString &value)
{
    lots = value;
}

QString ManagementInfo::getPerlot() const
{
    return perlot;
}

void ManagementInfo::setPerlot(const QString &value)
{
    perlot = value;
}

QString ManagementInfo::getEmpid() const
{
    return empid;
}

void ManagementInfo::setEmpid(const QString &value)
{
    empid = value;
}


