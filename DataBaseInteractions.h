#ifndef DATABASEINTERACTIONS_H
#define DATABASEINTERACTIONS_H
#include<QSqlDatabase>
#include <QSqlError>
#include <QDebug>
#include <QSqlQuery>
#include <QObject>
#include <QList>
#include <QObject>
#include <QString>
#include <QUrl>
class DataBaseInteractions : public QObject
{
    Q_OBJECT
    explicit DataBaseInteractions(QObject *parent = nullptr);
public:

    static DataBaseInteractions* Dbsingleton();
    static DataBaseInteractions *databaseObj;
    ~DataBaseInteractions();

    void insertleavedata(QString empid,QString name, QString noofdays, QString startday, QString endday, QString remark);
    void insertinvoicedata(QString ivno, QString date, QString amt, QString company, QString sgst, QString cgst, QString igst, QString taxrs, QString tds, QString totalamt, QString tdssale, QString tdsinvoice, QString total, bool status);
    void insertinvoiceproxydata(QString ivno, QString date, QString amt, QString company, QString sgst, QString cgst, QString igst, QString taxrs, QString tds, QString totalamt, QString tdssale, QString tdsinvoice, QString total);
    void insertpPaymentdata(QString ivno, QString date, QString amt, QString company, QString sgst, QString cgst, QString igst, QString taxrs, QString tds, QString totalamt, QString tdssale, QString tdsinvoice, QString total);
    void insertmanagementdata(QString empid, QString resourcename, QString company, QString reportingmngr, QString pmo, QString ponumber, QString podate, QString poendto, QString lots, QString perlot);
    void inserttimedata(QString resourcename, QString company, QString reportingmngr, QString pmo, QString ponumber, QString lots, QString startdate, QString enddate, QString clotsusage, QString rem, QString rempoamt);
    void insertemployeedata(QString empid, QString firstname, QString lastname, QString fathername, QString address1, QString address2, QString location, QString zipcode, QString state, QString email, QString phone, QString econtact, QUrl image, QString noofdays);
    void deleteemployee(QString id);
    void deleteemployeeOnly(QString id);
    void deleteProxyInvoicenos(QString id);
    void addPayment(QString nos);
    void updatelot(QString res,QString lotss);
    void updateLeaveInfo(QString id, QString days);
    void updateStatusDb(QString val, bool s);

public slots:
    QList<QStringList> viewemployeedata();
    QList<QStringList> viewtimedata();
    QList<QVariantList> viewinvoicedata();
    QList<QStringList> viewInvoiceproxydata();
    QList<QStringList> viewemployeedetails();
    QList<QStringList> viewLeavedetails();
    QList<QStringList> viewLeavedetailsFilters(QString);
    QList<QStringList> viewPaymentdetails(QString str);
    QList<QStringList> viewPaymentdetailsAtStart();
};

#endif // DATABASEINTERACTIONS_H
