#ifndef ACCOUNTMODEL_H
#define ACCOUNTMODEL_H
#include <QAbstractListModel>
#include <QDebug>
#include "InVoiceInfo.h"
#include "DataBaseInteractions.h"
class AccountModel : public QAbstractListModel
{
    Q_OBJECT
public:
    AccountModel();
    ~AccountModel();
    enum{INVOICE_NO,DATE,AMOUNT,COMPANY,SGST,CGST,IGST,TAXRS,TDS,TOTALAMT,TDSI,TDSS,TOTAL,STATUS};

    Q_INVOKABLE void updateStatus(QString);
    Q_INVOKABLE void addinvoice(QString ivno,QString date,QString amt,QString company,QString sgst,QString cgst,QString igst,QString taxRs,QString tds,QString totalamt,QString tdssale,QString tdsinvoice,QString total,bool check,bool status);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;

protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<InVoiceInfo> invoiceinfo;
   // DataBaseInteractions *db;
};

#endif // MODEL_H
