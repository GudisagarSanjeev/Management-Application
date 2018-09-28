#ifndef INVOICEINFO_H
#define INVOICEINFO_H
#include <QString>
class InVoiceInfo
{
public:
    InVoiceInfo();
    InVoiceInfo(QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,QString,bool);

    QString getIvno() const;
    void setIvno(const QString &value);

    QString getDate() const;
    void setDate(const QString &value);


    QString getAmt() const;
    void setAmt(const QString &value);

    QString getSgst() const;
    void setSgst(const QString &value);

    QString getCgst() const;

    QString getIgst() const;
    void setIgst(const QString &value);

    QString getTaxRs() const;
    void setTaxRs(const QString &value);

    QString getTotalamt() const;
    void setTotalamt(const QString &value);

    QString getTds() const;
    void setTds(const QString &value);

    void setCgst(const QString &value);

    bool getStatus() const;
    void setStatus(bool value);

    QString getCompany() const;
    void setCompany(const QString &value);

    QString getTdsinvoice() const;
    void setTdsinvoice(const QString &value);

    QString getTdssale() const;
    void setTdssale(const QString &value);

    QString getTotal() const;
    void setTotal(const QString &value);

private:
    QString ivno;
    QString date;
    QString amt;
    QString company;
    QString sgst;
    QString cgst;
    QString igst;
    QString taxRs;
    QString totalamt;
    QString tds;
    QString tdsinvoice;
    QString tdssale;
    QString total;

    bool status;

};

#endif // INVOICEINFO_H
