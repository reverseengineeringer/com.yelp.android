.class public Lcom/yelp/android/ui/util/p;
.super Ljava/lang/Object;
.source "CreateGoogleAccountAuthorizer.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/util/Calendar;

.field public e:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/yelp/android/ui/util/p;->a:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/yelp/android/ui/util/p;->b:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/yelp/android/ui/util/p;->c:Ljava/lang/String;

    .line 192
    iput-object p6, p0, Lcom/yelp/android/ui/util/p;->f:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 196
    if-eqz p4, :cond_0

    .line 197
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/util/p;->d:Ljava/util/Calendar;

    .line 198
    iget-object v1, p0, Lcom/yelp/android/ui/util/p;->d:Ljava/util/Calendar;

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->NOT_SPECIFIED:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    iput-object v0, p0, Lcom/yelp/android/ui/util/p;->e:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    .line 208
    if-nez p5, :cond_2

    .line 209
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->NOT_SPECIFIED:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    iput-object v0, p0, Lcom/yelp/android/ui/util/p;->e:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    .line 215
    :cond_1
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/ui/util/p;->d:Ljava/util/Calendar;

    .line 203
    const/4 v1, 0x6

    const-string/jumbo v2, "GoogleAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Birthdate format changed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/crashlytics/android/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    const-string/jumbo v0, "male"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->MALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    iput-object v0, p0, Lcom/yelp/android/ui/util/p;->e:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    goto :goto_1

    .line 212
    :cond_3
    const-string/jumbo v0, "female"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->FEMALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    iput-object v0, p0, Lcom/yelp/android/ui/util/p;->e:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    goto :goto_1
.end method
