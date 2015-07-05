.class final enum Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule$1;
.super Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
.source "RemoteConfigPreferences.java"


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 311
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;-><init>(Ljava/lang/String;IIILcom/yelp/android/appdata/af;)V

    return-void
.end method


# virtual methods
.method public getAntiTokens()Ljava/util/Set;
    .locals 2
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
    .line 314
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 315
    const-class v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 317
    const-class v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 318
    return-object v0
.end method
