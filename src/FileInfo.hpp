/*
 * Copyright (c) 2012 SSP Europe GmbH, Munich
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef FILEINFO_HPP_
#define FILEINFO_HPP_

#include <QFileInfo>
#include <QDateTime>
/*
 *
 * Author: Ekkehard Gentz (ekke), Rosenheim, Germany
 *
 */
class FileInfo: public QObject {
Q_OBJECT

public:
	FileInfo();

	/*
	 * FileBrowseDialog gives us a path to the file
	 * with a full qualified FileName
	 *
	 * getShortName() extracts the Filename itself
	 * so from QML we can use this name in ListItems etc.
	 *
	 *
	 */
	Q_INVOKABLE
	QString getShortName(QString filePath) const;

	/*
	 *
	 * get the timestamp of last modification
	 *
	 */
	Q_INVOKABLE
	QDateTime getLastModified(QString filePath) const;

	/*
	 *
	 * get the suffix from filename
	 *
	 */
	Q_INVOKABLE
	QString getSuffix(QString filePath) const;

	/*
	 *
	 * get the size from filename
	 *
	 */
	Q_INVOKABLE
	int getSize(QString filePath) const;

};

#endif /* FILEINFO_HPP_ */
