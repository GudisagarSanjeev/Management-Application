#ifndef TMODEL_H
#define TMODEL_H
#include <QAbstractListModel>
#include <QDebug>
#include "TimeInfo.h"
#include "DataBaseInteractions.h"
class Tmodel : public QAbstractListModel
{
    Q_OBJECT
public:
    Tmodel();
    ~Tmodel();

    enum{RESOURCENAME,COMPANY,REPORTINGMGR,PMO,PONUMBER,LOTS,STARTDATE,ENDDATE,LOTSUSAGE,REMAININGLOTS,REMAININGPOAMT};
    Q_INVOKABLE void addtime(QString id, QString company, QString reportingmngr, QString pmo, QString ponumber, QString lots, QString startdate, QString enddate, QString clotsusage, QString rem, QString rempoamt,bool check);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;

    Q_INVOKABLE void deleteTimemodel(QString res);
    Q_INVOKABLE void deleteTimeOnlymodel(QString res);

protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<TimeInfo> timeinfo;
    //DataBaseInteractions *db;
};

#endif // TMODEL_H
