#ifndef PAYMENTPROXYMODEL_H
#define PAYMENTPROXYMODEL_H
#include <QAbstractListModel>
#include <QObject>
#include "InVoiceInfo.h"
#include "DataBaseInteractions.h"

class PaymentProxyModel : public QAbstractListModel
{
    Q_OBJECT
public:
    PaymentProxyModel();
    ~PaymentProxyModel();
        enum{INVOICE_NO,DATE,AMOUNT,COMPANY,SGST,CGST,IGST,TAXRS,TDS,TOTALAMT,TDSI,TDSS,TOTAL,STATUS};
    Q_INVOKABLE void deleteInvoicenos(QString);
    Q_INVOKABLE void addInvoiceProxy(QString ivno, QString date, QString company,QString amt, QString sgst, QString cgst, QString igst, QString taxRs, QString tds, QString totalamt,QString tdssale, QString tdsinvoice,QString total,bool check);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
protected:
  QHash<int,QByteArray> roleNames() const override;
private:
  QList<InVoiceInfo> proxyinfo;
 // DataBaseInteractions *db;

};

#endif // PAYMENTPROXYMODEL_H
