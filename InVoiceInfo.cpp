#include "InVoiceInfo.h"

InVoiceInfo::InVoiceInfo()
{

}

InVoiceInfo::InVoiceInfo(QString ivno, QString date, QString amt, QString company, QString sgst, QString cgst, QString igst, QString taxRs, QString totalamt, QString tds, QString tdssale, QString tdsinvoice,QString total, bool status)
{
    setIvno(ivno);
    setDate(date);
    setAmt(amt);
    setSgst(sgst);
    setCgst(cgst);
    setIgst(igst);
    setTaxRs(taxRs);
    setTotalamt(totalamt);
    setTds(tds);
    setStatus(status);
    setCompany(company);
    setTdssale(tdssale);
    setTdsinvoice(tdsinvoice);
    setTotal(total);

}

QString InVoiceInfo::getIvno() const
{
    return ivno;
}

void InVoiceInfo::setIvno(const QString &value)
{
    ivno = value;
}

QString InVoiceInfo::getDate() const
{
    return date;
}

void InVoiceInfo::setDate(const QString &value)
{
    date = value;
}

QString InVoiceInfo::getAmt() const
{
    return amt;
}

void InVoiceInfo::setAmt(const QString &value)
{
    amt = value;
}

QString InVoiceInfo::getSgst() const
{
    return sgst;
}

void InVoiceInfo::setSgst(const QString &value)
{
    sgst = value;
}

QString InVoiceInfo::getCgst() const
{
    return cgst;
}

QString InVoiceInfo::getIgst() const
{
    return igst;
}

void InVoiceInfo::setIgst(const QString &value)
{
    igst = value;
}

QString InVoiceInfo::getTaxRs() const
{
    return taxRs;
}

void InVoiceInfo::setTaxRs(const QString &value)
{
    taxRs = value;
}

QString InVoiceInfo::getTotalamt() const
{
    return totalamt;
}

void InVoiceInfo::setTotalamt(const QString &value)
{
    totalamt = value;
}

QString InVoiceInfo::getTds() const
{
    return tds;
}

void InVoiceInfo::setTds(const QString &value)
{
    tds = value;
}

void InVoiceInfo::setCgst(const QString &value)
{
    cgst = value;
}

bool InVoiceInfo::getStatus() const
{
    return status;
}

void InVoiceInfo::setStatus(bool value)
{
    status = value;
}

QString InVoiceInfo::getCompany() const
{
    return company;
}

void InVoiceInfo::setCompany(const QString &value)
{
    company = value;
}

QString InVoiceInfo::getTdsinvoice() const
{
    return tdsinvoice;
}

void InVoiceInfo::setTdsinvoice(const QString &value)
{
    tdsinvoice = value;
}

QString InVoiceInfo::getTdssale() const
{
    return tdssale;
}

void InVoiceInfo::setTdssale(const QString &value)
{
    tdssale = value;
}

QString InVoiceInfo::getTotal() const
{
    return total;
}

void InVoiceInfo::setTotal(const QString &value)
{
    total = value;
}




