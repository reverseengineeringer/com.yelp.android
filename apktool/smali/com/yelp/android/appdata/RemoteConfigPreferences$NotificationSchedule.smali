.class public enum Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
.super Ljava/lang/Enum;
.source "RemoteConfigPreferences.java"

# interfaces
.implements Lcom/yelp/android/services/push/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;",
        ">;",
        "Lcom/yelp/android/services/push/t;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

.field public static final enum AFTER_CHECK_IN:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

.field public static final enum ALL_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

.field public static final DEFAULT_SCHEDULE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

.field public static final enum NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

.field public static final enum WEEKENDS_ONLY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;


# instance fields
.field public final id:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    const-string/jumbo v1, "ALL_ALERTS"

    const v2, 0x7f07055a

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->ALL_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 301
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    const-string/jumbo v1, "AFTER_CHECK_IN"

    const v2, 0x7f070559

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->AFTER_CHECK_IN:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 302
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    const-string/jumbo v1, "WEEKENDS_ONLY"

    const v2, 0x7f07055f

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->WEEKENDS_ONLY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 311
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule$1;

    const-string/jumbo v1, "NO_ALERTS"

    const v2, 0x7f07055d

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 299
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->ALL_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->AFTER_CHECK_IN:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->WEEKENDS_ONLY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->$VALUES:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 324
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->ALL_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->DEFAULT_SCHEDULE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 327
    iput p3, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->id:I

    .line 328
    iput p4, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->titleRes:I

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/yelp/android/appdata/af;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
    .locals 1

    .prologue
    .line 299
    const-class v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->$VALUES:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    return-object v0
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
    .line 333
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
