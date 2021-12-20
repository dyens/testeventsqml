#ifndef MYOBJECT_H
#define MYOBJECT_H

#include <QDebug>
#include <QEvent>
#include <QObject>

class MyObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool value MEMBER mValue)

public:
    MyObject();

    bool event(QEvent *e) override
    {
        qDebug() << "EVENT RECIEVED";
        return QObject::event(e);
    }

private:
    bool mValue = false;
};

#endif // MYOBJECT_H
