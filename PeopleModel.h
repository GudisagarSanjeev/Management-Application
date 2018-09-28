#ifndef PEOPLEMODEL_H
#define PEOPLEMODEL_H
#include <QAbstractListModel>
#include <QDebug>
#include "ManagementInfo.h"
#include "DataBaseInteractions.h"
#include "Tmodel.h"
class PeopleModel : public QAbstractListModel
{
    Q_OBJECT
    enum{empid,resourcename, company,  reportingmngr,  pmo,  ponumber,  podate,  poendto,  lots,  perlot};
public:
    PeopleModel();
    ~PeopleModel();
    Q_INVOKABLE void updatelots(QString res,QString l);
    Q_INVOKABLE void deleteemp(QString resourcenamee);
    Q_INVOKABLE void deleteOnlyemp(QString resourcenamee);
    Q_INVOKABLE void addmanagement(QString empid,QString resourcename, QString company, QString reportingmngr, QString pmo, QString ponumber, QString podate, QString poendto, QString lots, QString perlot,bool check);
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;

protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<ManagementInfo> managementinfo;
    Tmodel *tmodel;
   // DataBaseInteractions *db;
};

#endif // MODEL_H
