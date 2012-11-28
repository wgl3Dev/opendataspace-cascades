
#ifndef ODSSETTINGS_HPP_
#define ODSSETTINGS_HPP_

#include <qobject.h>
#include <bb/cascades/Application>

class ODSSettings: public QObject {
Q_OBJECT

public:
	ODSSettings();
	virtual ~ODSSettings();

	/**
	 * This Invokable function gets a value from the QSettings,
	 * if that value does not exist in the QSettings database, the default value is returned.
	 *
	 * @param objectName Index path to the item
	 * @param defaultValue Used to create the data in the database when adding
	 * @return If the objectName exists, the value of the QSettings object is returned.
	 *         If the objectName doesn't exist, the default value is returned.
	 */
	Q_INVOKABLE
	QString getValueFor(const QString &objectName, const QString &defaultValue);

	/**
	 * This function sets a value in the QSettings database. This function should to be called
	 * when a data value has been updated from QML
	 *
	 * @param objectName Index path to the item
	 * @param inputValue new value to the QSettings database
	 */
	Q_INVOKABLE
	void saveValueFor(const QString &objectName, const QString &inputValue);

};

#endif /* ODSSETTINGS_HPP_ */