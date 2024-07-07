/****************************************************************************
** Meta object code from reading C++ file 'server.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../server.h"
#include <QtNetwork/QSslPreSharedKeyAuthenticator>
#include <QtNetwork/QSslError>
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'server.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSServerENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSServerENDCLASS = QtMocHelpers::stringData(
    "Server",
    "ipChanged",
    "",
    "connectSuccess",
    "firstrowChanged",
    "firstcolChanged",
    "writeOk",
    "receiveOk",
    "rowChanged",
    "colChanged",
    "disConnectSignal",
    "portSlot",
    "s",
    "xyChangedSlot",
    "x",
    "y",
    "x1",
    "y1",
    "disConnect",
    "ip",
    "firstrow",
    "firstcol",
    "row",
    "col"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSServerENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       5,  108, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   86,    2, 0x06,    6 /* Public */,
       3,    0,   87,    2, 0x06,    7 /* Public */,
       4,    0,   88,    2, 0x06,    8 /* Public */,
       5,    0,   89,    2, 0x06,    9 /* Public */,
       6,    0,   90,    2, 0x06,   10 /* Public */,
       7,    0,   91,    2, 0x06,   11 /* Public */,
       8,    0,   92,    2, 0x06,   12 /* Public */,
       9,    0,   93,    2, 0x06,   13 /* Public */,
      10,    0,   94,    2, 0x06,   14 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      11,    1,   95,    2, 0x0a,   15 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      13,    4,   98,    2, 0x02,   17 /* Public */,
      18,    0,  107,    2, 0x02,   22 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,   12,

 // methods: parameters
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::Int,   14,   15,   16,   17,
    QMetaType::Void,

 // properties: name, type, flags
      19, QMetaType::QString, 0x00015103, uint(0), 0,
      20, QMetaType::Int, 0x00015103, uint(2), 0,
      21, QMetaType::Int, 0x00015103, uint(3), 0,
      22, QMetaType::Int, 0x00015103, uint(6), 0,
      23, QMetaType::Int, 0x00015103, uint(7), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject Server::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSServerENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSServerENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSServerENDCLASS_t,
        // property 'ip'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'firstrow'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'firstcol'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'row'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'col'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<Server, std::true_type>,
        // method 'ipChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'connectSuccess'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'firstrowChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'firstcolChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'writeOk'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'receiveOk'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'rowChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'colChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'disConnectSignal'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'portSlot'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'xyChangedSlot'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'disConnect'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void Server::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Server *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->ipChanged(); break;
        case 1: _t->connectSuccess(); break;
        case 2: _t->firstrowChanged(); break;
        case 3: _t->firstcolChanged(); break;
        case 4: _t->writeOk(); break;
        case 5: _t->receiveOk(); break;
        case 6: _t->rowChanged(); break;
        case 7: _t->colChanged(); break;
        case 8: _t->disConnectSignal(); break;
        case 9: _t->portSlot((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 10: _t->xyChangedSlot((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[4]))); break;
        case 11: _t->disConnect(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::ipChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::connectSuccess; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::firstrowChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::firstcolChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::writeOk; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::receiveOk; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::rowChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::colChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (Server::*)();
            if (_t _q_method = &Server::disConnectSignal; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 8;
                return;
            }
        }
    } else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Server *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->getIp(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->getFirstrow(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->getFirstcol(); break;
        case 3: *reinterpret_cast< int*>(_v) = _t->getRow(); break;
        case 4: *reinterpret_cast< int*>(_v) = _t->getCol(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Server *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setIp(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setFirstrow(*reinterpret_cast< int*>(_v)); break;
        case 2: _t->setFirstcol(*reinterpret_cast< int*>(_v)); break;
        case 3: _t->setRow(*reinterpret_cast< int*>(_v)); break;
        case 4: _t->setCol(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *Server::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Server::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSServerENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Server::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 12;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void Server::ipChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Server::connectSuccess()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Server::firstrowChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Server::firstcolChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void Server::writeOk()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void Server::receiveOk()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void Server::rowChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void Server::colChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void Server::disConnectSignal()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}
QT_WARNING_POP
