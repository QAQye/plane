/****************************************************************************
** Meta object code from reading C++ file 'connect.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../connect.h"
#include <QtNetwork/QSslPreSharedKeyAuthenticator>
#include <QtNetwork/QSslError>
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'connect.h' doesn't include <QObject>."
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
struct qt_meta_stringdata_CLASSConnectENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSConnectENDCLASS = QtMocHelpers::stringData(
    "Connect",
    "connectSuccess",
    "",
    "receiveOk",
    "firstrowChanged",
    "firstcolChanged",
    "rowChanged",
    "colChanged",
    "writeOk",
    "disConnectSignal",
    "portSlot",
    "p",
    "i",
    "displayError",
    "QAbstractSocket::SocketError",
    "xyChangedSlot",
    "x",
    "y",
    "x1",
    "y1",
    "disConnect",
    "firstrow",
    "firstcol",
    "row",
    "col"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSConnectENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       4,  112, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       8,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   86,    2, 0x06,    5 /* Public */,
       3,    0,   87,    2, 0x06,    6 /* Public */,
       4,    0,   88,    2, 0x06,    7 /* Public */,
       5,    0,   89,    2, 0x06,    8 /* Public */,
       6,    0,   90,    2, 0x06,    9 /* Public */,
       7,    0,   91,    2, 0x06,   10 /* Public */,
       8,    0,   92,    2, 0x06,   11 /* Public */,
       9,    0,   93,    2, 0x06,   12 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      10,    2,   94,    2, 0x0a,   13 /* Public */,
      13,    1,   99,    2, 0x0a,   16 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      15,    4,  102,    2, 0x02,   18 /* Public */,
      20,    0,  111,    2, 0x02,   23 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString,   11,   12,
    QMetaType::Void, 0x80000000 | 14,    2,

 // methods: parameters
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::Int,   16,   17,   18,   19,
    QMetaType::Void,

 // properties: name, type, flags
      21, QMetaType::Int, 0x00015103, uint(2), 0,
      22, QMetaType::Int, 0x00015103, uint(3), 0,
      23, QMetaType::Int, 0x00015103, uint(4), 0,
      24, QMetaType::Int, 0x00015103, uint(5), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject Connect::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSConnectENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSConnectENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSConnectENDCLASS_t,
        // property 'firstrow'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'firstcol'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'row'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'col'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<Connect, std::true_type>,
        // method 'connectSuccess'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'receiveOk'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'firstrowChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'firstcolChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'rowChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'colChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'writeOk'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'disConnectSignal'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'portSlot'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'displayError'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QAbstractSocket::SocketError, std::false_type>,
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

void Connect::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Connect *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->connectSuccess(); break;
        case 1: _t->receiveOk(); break;
        case 2: _t->firstrowChanged(); break;
        case 3: _t->firstcolChanged(); break;
        case 4: _t->rowChanged(); break;
        case 5: _t->colChanged(); break;
        case 6: _t->writeOk(); break;
        case 7: _t->disConnectSignal(); break;
        case 8: _t->portSlot((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2]))); break;
        case 9: _t->displayError((*reinterpret_cast< std::add_pointer_t<QAbstractSocket::SocketError>>(_a[1]))); break;
        case 10: _t->xyChangedSlot((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[4]))); break;
        case 11: _t->disConnect(); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
        case 9:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
            case 0:
                *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType::fromType< QAbstractSocket::SocketError >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::connectSuccess; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::receiveOk; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::firstrowChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::firstcolChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::rowChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::colChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::writeOk; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (Connect::*)();
            if (_t _q_method = &Connect::disConnectSignal; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
    } else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Connect *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->getFirstrow(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->getFirstcol(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->getRow(); break;
        case 3: *reinterpret_cast< int*>(_v) = _t->getCol(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Connect *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setFirstrow(*reinterpret_cast< int*>(_v)); break;
        case 1: _t->setFirstcol(*reinterpret_cast< int*>(_v)); break;
        case 2: _t->setRow(*reinterpret_cast< int*>(_v)); break;
        case 3: _t->setCol(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *Connect::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Connect::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSConnectENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Connect::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void Connect::connectSuccess()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Connect::receiveOk()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Connect::firstrowChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Connect::firstcolChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void Connect::rowChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void Connect::colChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void Connect::writeOk()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void Connect::disConnectSignal()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}
QT_WARNING_POP
