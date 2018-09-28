#ifndef LEAVEMODELFILTER_H
#define LEAVEMODELFILTER_H
#include "LeaveModelFilterInfo.h"
#include <QAbstractListModel>
#include "DataBaseInteractions.h"
#include <QTimer>
class LeaveModelFilter : public QAbstractListModel
{
    Q_OBJECT
public:
    LeaveModelFilter();
     ~ LeaveModelFilter();
    enum{ENAME,ESTARTDAY,EENDDAY,EREMARK,EEMPLOYEEID};

    Q_INVOKABLE void dataa(QString id);
    void setFilterData(QString, QString, QString, QString, QString);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;
protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<LeaveModelFilterInfo> leavefilterinfo;
    //DataBaseInteractions *db;
};

#endif // LEAVEMODELFILTER_H
