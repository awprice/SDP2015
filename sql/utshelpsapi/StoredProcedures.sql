USE [elssa_booking]
GO
/****** Object:  StoredProcedure [dbo].[prcCancelWorkshopBooking]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcCancelWorkshopBooking]
	@workshopId int,
	@studentId char(10),
	@userId int
AS 
    SET NOCOUNT ON;

	DECLARE @studentId_waiting char(10);

	-- Remove the booking
	UPDATE workShops_booking
	SET archived = getdate(), archiverID = @userId
	WHERE workshopID = @workshopId AND studentID = @studentId;

	-- Find the next waiting
	SELECT TOP(1) @studentId_waiting = studentId
	FROM workShops_waiting
	WHERE workshopID = @workshopId AND archived is null
	ORDER BY created;

	-- Create booking for next waiting (if it exists)
	IF @studentId_waiting is not null
	BEGIN
		INSERT INTO dbo.workShops_booking
			(workshopID, studentID, created, creatorID)
		VALUES
			(@workshopId, @studentId_waiting, getdate(), @userId);

		-- Remove newly booked from waiting
		UPDATE workShops_waiting
		SET archived = getdate(), archiverID = @userId
		WHERE workshopID = @workshopId AND studentID = @studentId_waiting;
	END

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcCreateStudent]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcCreateStudent]
	@studentID char(10),
	@dob datetime = null,
	@gender char(5) = null,
	@degree char(5),
	@status char(20),
	@first_language nvarchar(50),
	@country_origin nvarchar(50),
	@background ntext = null,
	@HSC bit = null,
	@HSC_mark char(20) = null,
	@IELTS bit = null,
	@IELTS_mark char(20) = null,
	@TOEFL bit = null,
	@TOEFL_mark char(20) = null,
	@TAFE bit = null,
	@TAFE_mark char(20) = null,
	@CULT bit = null,
	@CULT_mark char(20) = null,
	@InsearchDEEP bit = null,
	@InsearchDEEP_mark char(20) = null,
	@InsearchDiploma bit = null,
	@InsearchDiploma_mark char(20) = null,
	@foundationcourse bit = null,
	@foundationcourse_mark char(20) = null,
	@creatorID int,
	@degree_details char(50) = null,
	@alternative_contact text = null,
	@preferred_name nvarchar(50) = null
AS 
    SET NOCOUNT ON;

	INSERT INTO dbo.students
		(studentID, dob, gender, degree, status, first_language, country_origin, background, 
		HSC, HSC_mark, IELTS, IELTS_mark, TOEFL, TOEFL_mark, TAFE, TAFE_mark, CULT, CULT_mark, 
		InsearchDEEP, InsearchDEEP_mark, InsearchDiploma, InsearchDiploma_mark, 
		foundationcourse, foundationcourse_mark, created, creatorID, degree_details, alternative_contact, preferred_name)
	VALUES
		(@studentID, @dob, @gender, @degree, @status, @first_language, @country_origin, @background, 
		@HSC, @HSC_mark, @IELTS, @IELTS_mark, @TOEFL, @TOEFL_mark, @TAFE, @TAFE_mark, @CULT, @CULT_mark, 
		@InsearchDEEP, @InsearchDEEP_mark, @InsearchDiploma, @InsearchDiploma_mark, 
		@foundationcourse, @foundationcourse_mark, getdate(), @creatorID, @degree_details, @alternative_contact, @preferred_name)

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcCreateWorkshopBooking]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcCreateWorkshopBooking]
	@workshopId int,
	@studentId char(10),
	@userId int
AS 
    SET NOCOUNT ON;

	INSERT INTO dbo.workShops_booking
		(workshopID, studentID, created, creatorID)
	VALUES
		(@workshopId, @studentId, getdate(), @userId)

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcCreateWorkshopWaiting]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcCreateWorkshopWaiting]
	@workshopId int,
	@studentId char(10),
	@priority int,
	@userId int
AS 
    SET NOCOUNT ON;

	INSERT INTO dbo.workShops_waiting
		(workshopID, studentID, priority, created, creatorID)
	VALUES
		(@workshopId, @studentId, @priority, getdate(), @userId)

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcGetSession]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcGetSession]
	@sessionId int
AS 
    SET NOCOUNT ON;

	SELECT id, starting, ending, campus, lecturer, type, archived
	FROM sessions
	WHERE id = @sessionId

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcGetSessionBooking]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcGetSessionBooking]
	@sessionId int,
	@studentID char(10)
AS 
    SET NOCOUNT ON;

	SELECT id, studentID, sessionId, cancel, assisstance, reason, attended, waitingID, archived,
		isgroup, numpeople, lecturercomment, learningissues, islocked, assigntype, assigntypeOther, subject,
		appointments, appointmentsOther, assisstanceText
	FROM bookings
	WHERE sessionId = @sessionId AND studentId = @studentID

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcGetStudent]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcGetStudent]
	@studentID char(10)
AS 
    SET NOCOUNT ON;

	SELECT studentID, dob, gender, degree, status, first_language, country_origin, background, 
		HSC, HSC_mark, IELTS, IELTS_mark, TOEFL, TOEFL_mark, TAFE, TAFE_mark, CULT, CULT_mark, 
		InsearchDEEP, InsearchDEEP_mark, InsearchDiploma, InsearchDiploma_mark, 
		foundationcourse, foundationcourse_mark, created, creatorID, degree_details, alternative_contact, preferred_name
	FROM students
	WHERE studentID = @studentID

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcGetWorkshop]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcGetWorkshop]
	@workshopId int
AS 
    SET NOCOUNT ON;

	SELECT id, topic, description, targetingGroup, campusID, starting, ending, maximum, cutoff, 
		workshopsetid, type, reminder_num, reminder_sent, dbo.ufnGetWorkshopBookingCount(id) as BookingCount, archived
	FROM workshops
	WHERE id = @workshopId

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcGetWorkshopBooking]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcGetWorkshopBooking]
	@workshopId int,
	@studentId char(10)
AS 
    SET NOCOUNT ON;

	SELECT id, workshopID, studentID, canceled, attended, archived
	FROM workShops_booking
	WHERE workshopID = @workshopId AND studentId = @studentId

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcGetWorkshopWaiting]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcGetWorkshopWaiting]
	@workshopId int,
	@studentId char(10)
AS 
    SET NOCOUNT ON;

	SELECT id, workshopID, studentID, priority, archived
	FROM workShops_waiting
	WHERE workshopID = @workshopId AND studentId = @studentId

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcListAppointments]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcListAppointments]
	@active bit = null
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
		@nl char(2) = char(13) + char(10)


	SET @sql = 'SELECT id, type, orderItem, iscurrent
				FROM appointments ' + @nl

	IF @active is not null
		BEGIN
			SET @sql = @sql + ' WHERE iscurrent = ' + CONVERT(varchar(2), @active) + ' ' + @nl
		END
	
	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcListAssignments]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcListAssignments]
	@active bit = null
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
		@nl char(2) = char(13) + char(10)


	SET @sql = 'SELECT id, type, orderItem, iscurrent
				FROM assignments ' + @nl

	IF @active is not null
		BEGIN
			SET @sql = @sql + ' WHERE iscurrent = ' + CONVERT(varchar(2), @active) + ' ' + @nl
		END
	
	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcListCampuses]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcListCampuses]
	@active bit = null
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
		@nl char(2) = char(13) + char(10)


	SET @sql = 'SELECT id, campus, archived
				FROM campus ' + @nl

	IF @active is not null
		BEGIN
			IF @active = 1
				BEGIN
					SET @sql = @sql + ' WHERE archived is null ' + @nl
				END
			ELSE
				BEGIN
					SET @sql = @sql + ' WHERE archived is not null ' + @nl
				END
		END
	
	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcListLecturers]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcListLecturers]
	@active bit = null
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
		@nl char(2) = char(13) + char(10)


	SET @sql = 'SELECT id, staffID, first_name, last_name, email, inactive, archived
				FROM lecturers ' + @nl

	IF @active is not null
		BEGIN
			IF @active = 1
				BEGIN
					SET @sql = @sql + ' WHERE archived is null ' + @nl
				END
			ELSE
				BEGIN
					SET @sql = @sql + ' WHERE archived is not null ' + @nl
				END
		END
	
	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcListSessionTypes]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcListSessionTypes]
	@active bit = 1
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
	@nl char(2) = char(13) + char(10)

	SET @sql = 'SELECT id, abbName, fullName, iscurrent
				FROM sessionsType ' + @nl

	IF @active is not null
	BEGIN
		IF @active = 1
		BEGIN
			SET @sql = @sql + ' WHERE iscurrent = 1 ' + @nl
		END
		ELSE
		BEGIN
			SET @sql = @sql + ' WHERE iscurrent = 0 ' + @nl
		END
	END
	
	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcListWorkShopSets]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcListWorkShopSets]
	@active bit = null
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
		@nl char(2) = char(13) + char(10)


	SET @sql = 'SELECT id, name, archived
				FROM WorkShopSet ' + @nl

	IF @active is not null
		BEGIN
			IF @active = 1
				BEGIN
					SET @sql = @sql + ' WHERE archived is null ' + @nl
				END
			ELSE
				BEGIN
					SET @sql = @sql + ' WHERE archived is not null ' + @nl
				END
		END
	
	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcSearchSessionBookings]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcSearchSessionBookings]
	@studentID char(10) = null,
	@startingDtBegin datetime = null,
	@startingDtEnd datetime = null,
	@endingDtBegin datetime = null,
	@endingDtEnd datetime = null,
	@campus nvarchar(50) = null,
	@lecturerID int = null,
	@sessionTypeID int = null,
	@active bit = null,
	@page int = 1,
	@pageSize int = 10
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
			@nl char(2) = char(13) + char(10)

	SET @sql = 'SELECT BookingId, SessionId, StartDate, EndDate, Campus, LecturerFirstName, LecturerLastName, LecturerEmail,
					SessionTypeAbb, SessionType, Cancel, Assistance, Reason, Attended, WaitingID, IsGroup, NumPeople, 
					LecturerComment, LearningIssues, IsLocked, AssignmentType, AssignTypeOther, Subject, AppointmentType,
					AppointmentsOther, AssistanceText, archived
				FROM 		
				(
				SELECT b.Id as BookingId, 
					s.Id as SessionId,
					s.starting as StartDate, 
					s.ending as EndDate, 
					s.campus as Campus, 
					l.first_name as LecturerFirstName, 
					l.last_name as LecturerLastName, 
					l.email as LecturerEmail, 
					st.abbName as SessionTypeAbb, 
					st.fullName as SessionType,
					b.cancel as Cancel, 
					b.assisstance as Assistance, 
					b.reason as Reason, 
					b.attended as Attended, 
					b.waitingID as WaitingID,
					b.isgroup as IsGroup, 
					b.numpeople as NumPeople, 
					b.lecturercomment as LecturerComment, 
					b.learningissues as LearningIssues,
					b.islocked as IsLocked, 
					ass.type as AssignmentType, 
					b.assigntypeOther as AssignTypeOther,
					b.subject as Subject, 
					app.type as AppointmentType, 
					b.appointmentsOther as AppointmentsOther, 
					b.assisstanceText as AssistanceText,
					b.archived,
					ROW_NUMBER() OVER (ORDER BY s.Id) AS RowNum
				FROM dbo.sessions s
					INNER JOIN bookings b
						ON s.Id = b.sessionId
					INNER JOIN lecturers l
						ON l.id = s.lecturer
					INNER JOIN sessionsType st
						ON s.type = st.id
					LEFT JOIN assignments ass
						ON ass.id = b.assigntype
					LEFT JOIN appointments app
						ON app.id = b.appointments
				WHERE 1=1' + @nl

	/* Set the time part of the end date ranges to 23:59 */
	SET @startingDtEnd = dateadd(dd, 1, @startingDtEnd)
	SET @startingDtEnd = dateadd(mi, -1, @startingDtEnd)
	SET @endingDtEnd = dateadd(dd, 1, @endingDtEnd)
	SET @endingDtEnd = dateadd(mi, -1, @endingDtEnd)

	IF @studentID is not null
	BEGIN
		SET @sql = @sql + ' AND b.studentID = ' + CONVERT(varchar(10), @studentID) + ' ' + @nl
	END

	IF @startingDtBegin is not null AND @startingDtEnd is not null
	BEGIN		
		SET @sql = @sql + ' AND s.starting BETWEEN ''' + CONVERT(varchar(23), @startingDtBegin, 121) + ''' AND ''' + CONVERT(varchar(23), @startingDtEnd, 121) + ''' ' + @nl
	END

	IF @endingDtBegin is not null AND @endingDtEnd is not null
	BEGIN		
		SET @sql = @sql + ' AND s.ending BETWEEN ''' + CONVERT(varchar(23), @endingDtBegin, 121) + ''' AND ''' + CONVERT(varchar(23), @endingDtEnd, 121) + ''' ' + @nl
	END

	IF @campus is not null
	BEGIN
		SET @sql = @sql + ' AND s.campus LIKE ''%' + @campus + '%'' ' + @nl
	END

	IF @lecturerID is not null
	BEGIN
		SET @sql = @sql + ' AND l.id = ' + CONVERT(varchar(5), @lecturerID) + ' ' + @nl
	END

	IF @sessionTypeID is not null
	BEGIN
		SET @sql = @sql + ' AND st.id = ' + CONVERT(varchar(5), @sessionTypeID) + ' ' + @nl
	END

	IF @active is not null
	BEGIN
		IF @active = 1
		BEGIN
			SET @sql = @sql + ' AND s.archived is null AND b.archived is null ' + @nl
		END
		ELSE
		BEGIN
			SET @sql = @sql + ' AND s.archived is not null AND b.archived is not null ' + @nl
		END
	END

	SET @sql = @sql + ') AS tbl WHERE tbl.RowNum BETWEEN ' +  CONVERT(varchar(5), ((@page-1)*@pageSize)+1) + ' ' + @nl
	SET @sql = @sql + ' AND ' + CONVERT(varchar(5), @page*@pageSize) + ' ' + @nl

	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcSearchWorkshopBookings]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcSearchWorkshopBookings]
	@studentID char(10) = null,
	@startingDtBegin datetime = null,
	@startingDtEnd datetime = null,
	@endingDtBegin datetime = null,
	@endingDtEnd datetime = null,
	@campusId int = null,
	@active bit = null,
	@page int = 1,
	@pageSize int = 10
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
			@nl char(2) = char(13) + char(10)

	SET @sql = 'SELECT BookingId, workshopID, studentID, topic, description, targetingGroup, 
					campusID, starting, ending, maximum, cutoff, canceled, attended, workshopsetid,
					type, reminder_num, reminder_sent, WorkshopArchived, BookingArchived
				FROM 		
				(
				SELECT wb.id as BookingId,
					wb.workshopID,
					wb.studentID,
					w.topic,
					w.description,
					w.targetingGroup,
					w.campusID,
					w.starting,
					w.ending,
					w.maximum,
					w.cutoff,
					wb.canceled,
					wb.attended,
					w.WorkShopSetID,
					w.type,
					w.reminder_num,
					w.reminder_sent,
					w.archived as "WorkshopArchived",
					wb.archived as "BookingArchived",
					ROW_NUMBER() OVER (ORDER BY wb.Id) AS RowNum
				FROM workShops_booking wb
					INNER JOIN workshops w
						ON wb.workshopID = w.id 
				WHERE 1=1' + @nl

	/* Set the time part of the end date ranges to 23:59 */
	SET @startingDtEnd = dateadd(dd, 1, @startingDtEnd)
	SET @startingDtEnd = dateadd(mi, -1, @startingDtEnd)
	SET @endingDtEnd = dateadd(dd, 1, @endingDtEnd)
	SET @endingDtEnd = dateadd(mi, -1, @endingDtEnd)
	
	IF @studentID is not null
	BEGIN
		SET @sql = @sql + ' AND wb.studentID = ' + CONVERT(varchar(10), @studentID) + ' ' + @nl
	END

	IF @startingDtBegin is not null AND @startingDtEnd is not null
	BEGIN		
		SET @sql = @sql + ' AND w.starting BETWEEN ''' + CONVERT(varchar(23), @startingDtBegin, 121) + ''' AND ''' + CONVERT(varchar(23), @startingDtEnd, 121) + ''' ' + @nl
	END

	IF @endingDtBegin is not null AND @endingDtEnd is not null
	BEGIN		
		SET @sql = @sql + ' AND w.ending BETWEEN ''' + CONVERT(varchar(23), @endingDtBegin, 121) + ''' AND ''' + CONVERT(varchar(23), @endingDtEnd, 121) + ''' ' + @nl
	END

	IF @campusID is not null
	BEGIN
		SET @sql = @sql + ' AND w.campusID = ' + CONVERT(varchar(5), @campusID) + ' ' + @nl
	END

	IF @active is not null
	BEGIN
		IF @active = 1
		BEGIN
			SET @sql = @sql + ' AND w.archived is null AND wb.archived is null ' + @nl
		END
		ELSE
		BEGIN
			SET @sql = @sql + ' AND w.archived is not null AND wb.archived is not null ' + @nl
		END
	END

	SET @sql = @sql + ') AS tbl WHERE tbl.RowNum BETWEEN ' +  CONVERT(varchar(5), ((@page-1)*@pageSize)+1) + ' ' + @nl
	SET @sql = @sql + ' AND ' + CONVERT(varchar(5), @page*@pageSize) + ' ' + @nl

	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcSearchWorkshops]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcSearchWorkshops]
	@workshopSetId int = null,
	@topic varchar(255) = null,
	@startingDtBegin datetime = null,
	@startingDtEnd datetime = null,
	@endingDtBegin datetime = null,
	@endingDtEnd datetime = null,
	@campusID int = null,
	@active bit = null,
	@page int = 1,
	@pageSize int = 10
AS 
    SET NOCOUNT ON;

	DECLARE @sql nvarchar(MAX),
		@nl char(2) = char(13) + char(10)

	SET @sql = 'SELECT WorkshopId, topic, description, targetingGroup, campus, StartDate, EndDate,
				maximum, WorkShopSetID, cutoff, type, reminder_num, reminder_sent, DaysOfWeek, BookingCount, archived
				FROM 		
				(
				SELECT w.id as WorkshopId,
					w.topic,
					w.description,
					w.targetingGroup,
					c.campus,
					w.starting as StartDate,
					w.ending as EndDate,
					w.maximum,
					w.WorkShopSetID,
					w.cutoff,
					w.type,
					w.reminder_num,
					w.reminder_sent,
					p.days as DaysOfWeek,
					dbo.ufnGetWorkshopBookingCount(w.id) as BookingCount,
					w.archived,
					ROW_NUMBER() OVER (ORDER BY w.Id) AS RowNum
				FROM workshops w
					LEFT JOIN programWorkshops pw
						ON w.id = pw.workshopId
					LEFT JOIN programs p
						ON pw.programId = p.id
					INNER JOIN campus c
						ON w.campusID = c.id
				WHERE 1=1' + @nl

	/* Set the time part of the end date ranges to 23:59 */
	SET @startingDtEnd = dateadd(dd, 1, @startingDtEnd)
	SET @startingDtEnd = dateadd(mi, -1, @startingDtEnd)
	SET @endingDtEnd = dateadd(dd, 1, @endingDtEnd)
	SET @endingDtEnd = dateadd(mi, -1, @endingDtEnd)

	IF @workshopSetId is not null
	BEGIN
		SET @sql = @sql + ' AND w.WorkShopSetID = ' + CONVERT(varchar(5), @workshopSetId) + ' ' + @nl
	END

	IF @topic is not null
	BEGIN
		SET @sql = @sql + ' AND w.topic = ' + @topic + ' ' + @nl
	END

	IF @startingDtBegin is not null AND @startingDtEnd is not null
	BEGIN		
		SET @sql = @sql + ' AND w.starting BETWEEN ''' + CONVERT(varchar(23), @startingDtBegin, 121) + ''' AND ''' + CONVERT(varchar(23), @startingDtEnd, 121) + ''' ' + @nl
	END

	IF @endingDtBegin is not null AND @endingDtEnd is not null
	BEGIN		
		SET @sql = @sql + ' AND w.ending BETWEEN ''' + CONVERT(varchar(23), @endingDtBegin, 121) + ''' AND ''' + CONVERT(varchar(23), @endingDtEnd, 121) + ''' ' + @nl
	END

	IF @campusID is not null
	BEGIN
		SET @sql = @sql + ' AND w.campusID = ' + CONVERT(varchar(5), @campusID) + ' ' + @nl
	END

	IF @active is not null
	BEGIN
		IF @active = 1
		BEGIN
			SET @sql = @sql + ' AND w.archived is null ' + @nl
		END
		ELSE
		BEGIN
			SET @sql = @sql + ' AND w.archived is not null ' + @nl
		END
	END

	SET @sql = @sql + ') AS tbl WHERE tbl.RowNum BETWEEN ' +  CONVERT(varchar(5), ((@page-1)*@pageSize)+1) + ' ' + @nl
	SET @sql = @sql + ' AND ' + CONVERT(varchar(5), @page*@pageSize) + ' ' + @nl

	EXEC sp_executesql @sql

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcUpdateSessionBooking]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcUpdateSessionBooking]
	@sessionId int,
	@studentId char(10),
	@cancel bit = null,
	@assisstance char(20) = null,
	@reason ntext = null,
	@attended int = null,
	@waitingID int = null,
	@isgroup int = null,
	@numpeople char(10) = null,
	@lecturercomment ntext = null,
	@learningissues nvarchar(50) = null,
	@islocked int = null,
	@assigntype nvarchar(50) = null,
	@assigntypeOther nvarchar(50) = null,
	@subject nvarchar(100) = null,
	@appointments nvarchar(50) = null,
	@appointmentsOther nvarchar(50) = null,
	@assisstanceText ntext = null,
	@userId int
AS 
    SET NOCOUNT ON;

	IF @cancel is not null
	BEGIN
		UPDATE bookings
		SET cancel = @cancel, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @assisstance is not null
	BEGIN
		UPDATE bookings
		SET assisstance = @assisstance, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @reason is not null
	BEGIN
		UPDATE bookings
		SET reason = @reason, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @attended is not null
	BEGIN
		UPDATE bookings
		SET attended = @attended, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @waitingID is not null
	BEGIN
		UPDATE bookings
		SET waitingID = @waitingID, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @isgroup is not null
	BEGIN
		UPDATE bookings
		SET isgroup = @isgroup, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @numpeople is not null
	BEGIN
		UPDATE bookings
		SET numpeople = @numpeople, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @lecturercomment is not null
	BEGIN
		UPDATE bookings
		SET lecturercomment = @lecturercomment, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @learningissues is not null
	BEGIN
		UPDATE bookings
		SET learningissues = @learningissues, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @islocked is not null
	BEGIN
		UPDATE bookings
		SET islocked = @islocked, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @assigntype is not null
	BEGIN
		UPDATE bookings
		SET assigntype = @assigntype, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @assigntypeOther is not null
	BEGIN
		UPDATE bookings
		SET assigntypeOther = @assigntypeOther, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @subject is not null
	BEGIN
		UPDATE bookings
		SET subject = @subject, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @appointments is not null
	BEGIN
		UPDATE bookings
		SET appointments = @appointments, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @appointmentsOther is not null
	BEGIN
		UPDATE bookings
		SET appointmentsOther = @appointmentsOther, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	IF @assisstanceText is not null
	BEGIN
		UPDATE bookings
		SET assisstanceText = @assisstanceText, modified = getdate(), modifierId = @userId
		WHERE sessionId = @sessionId AND studentId = @studentId
	END

	SET NOCOUNT OFF;

GO
/****** Object:  StoredProcedure [dbo].[prcUpdateWorkshopBooking]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[prcUpdateWorkshopBooking]
	@workshopId int,
	@studentId char(10),
	@canceled int = null,
	@attended int = null,
	@userId int
AS 
    SET NOCOUNT ON;

	IF @canceled is not null
	BEGIN
		UPDATE workShops_booking
		SET canceled = @canceled, modified = getdate(), modifierId = @userId
		WHERE workshopID = @workshopId AND studentId = @studentId
	END

	IF @attended is not null
	BEGIN
		UPDATE workShops_booking
		SET attended = @attended, modified = getdate(), modifierId = @userId
		WHERE workshopID = @workshopId AND studentId = @studentId
	END

	SET NOCOUNT OFF;

GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetWaitingCount]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ufnGetWaitingCount](@workshopId int)
RETURNS int 
AS 
BEGIN
    DECLARE @ret int;

	SELECT @ret = count(*)
	FROM workShops_waiting
	WHERE workshopID = @workshopId
		AND archived is null;

	IF (@ret IS NULL) 
		SET @ret = 0;

    RETURN @ret;
END;

GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetWorkshopBookingCount]    Script Date: 6/08/2015 9:55:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ufnGetWorkshopBookingCount](@workshopId int)
RETURNS int 
AS 
BEGIN
    DECLARE @ret int;

	SELECT @ret = count(*)
	FROM workShops_booking
	WHERE workshopID = @workshopId
		AND (canceled <> 1 OR canceled is null);

	IF (@ret IS NULL) 
		SET @ret = 0;

    RETURN @ret;
END;

GO
