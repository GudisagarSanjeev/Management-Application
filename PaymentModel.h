#ifndef PAYMENTMODEL_H
#define PAYMENTMODEL_H
#include <QObject>
#include "InVoiceInfo.h"
#include "DataBaseInteractions.h"
#include <QAbstractListModel>
class PaymentModel : public QAbstractListModel
{
    Q_OBJECT
public:
    PaymentModel();
    ~PaymentModel();

    enum{IVNO,DATE,AMOUNT,COMPANY,SGST,CGST,IGST,TAXRS,TDS,TOTALAMT,TDSS,TDSI,TOTAL};
    Q_INVOKABLE void invonosList(QString);
    void addPayment(QString, QString,QString,QString, QString,QString, QString, QString , QString, QString, QString, QString, QString, bool check);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<InVoiceInfo> paymentinfo;
  //  DataBaseInteractions *db;
};

#endif // PAYMENTMODEL_H
