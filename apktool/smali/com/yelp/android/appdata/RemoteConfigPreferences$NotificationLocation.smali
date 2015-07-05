.class public enum Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;
.super Ljava/lang/Enum;
.source "RemoteConfigPreferences.java"

# interfaces
.implements Lcom/yelp/android/services/push/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;",
        ">;",
        "Lcom/yelp/android/services/push/t;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

.field public static final enum ALL_CITIES:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

.field public static final DEFAULT_LOCATION:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

.field public static final enum MY_CITY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

.field public static final enum NONE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;


# instance fields
.field public final id:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    const-string/jumbo v1, "MY_CITY"

    const v2, 0x7f07055c

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->MY_CITY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 261
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    const-string/jumbo v1, "ALL_CITIES"

    const v2, 0x7f07055b

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->ALL_CITIES:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 268
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation$1;

    const-string/jumbo v1, "NONE"

    const/4 v2, -0x1

    const v3, 0x7f07055d

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->NONE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->MY_CITY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->ALL_CITIES:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->NONE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->$VALUES:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 277
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->MY_CITY:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    sput-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->DEFAULT_LOCATION:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

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
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 280
    iput p3, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->id:I

    .line 281
    iput p4, p0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->titleRes:I

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/yelp/android/appdata/af;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;
    .locals 1

    .prologue
    .line 259
    const-class v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->$VALUES:[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

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
    .line 286
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
