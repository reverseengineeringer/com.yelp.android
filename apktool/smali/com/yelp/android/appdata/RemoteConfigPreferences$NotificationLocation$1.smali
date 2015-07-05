.class final enum Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation$1;
.super Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;
.source "RemoteConfigPreferences.java"


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 268
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/af;)V

    return-void
.end method


# virtual methods
.method public getAntiTokens()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/yelp/android/services/push/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->getAntiTokens()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
