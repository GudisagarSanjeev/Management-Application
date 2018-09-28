#ifndef LEAVEMODEL_H
#define LEAVEMODEL_H
#include <QAbstractListModel>
#include <QDebug>
#include <DataBaseInteractions.h>
#include "LeaveInfo.h"

class LeaveModel : public QAbstractListModel
{
    Q_OBJECT

public:
    LeaveModel();
    ~LeaveModel();
    enum{NAME,DAYS,STARTDAY,ENDDAY,REMARK,EMPLOYEEID};
    Q_INVOKABLE void addLeave(QString, QString, QString, QString, QString, QString, bool);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    Q_INVOKABLE void deleteempleavedetails(QString);
protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<LeaveInfo> leaveinfo;
   // DataBaseInteractions *db;
};

#endif // LEAVEMODEL_H
