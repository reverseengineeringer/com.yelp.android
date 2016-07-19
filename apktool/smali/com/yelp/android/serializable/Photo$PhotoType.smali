.class public final enum Lcom/yelp/android/serializable/Photo$PhotoType;
.super Ljava/lang/Enum;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Photo$PhotoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Photo$PhotoType;

.field public static final enum BUSINESS:Lcom/yelp/android/serializable/Photo$PhotoType;

.field public static final enum EVENT:Lcom/yelp/android/serializable/Photo$PhotoType;

.field public static final enum UNKNOWN:Lcom/yelp/android/serializable/Photo$PhotoType;

.field public static final enum USER_PROFILE:Lcom/yelp/android/serializable/Photo$PhotoType;

.field public static final enum USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/yelp/android/serializable/Photo$PhotoType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/Photo$PhotoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->UNKNOWN:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 32
    new-instance v0, Lcom/yelp/android/serializable/Photo$PhotoType;

    const-string/jumbo v1, "BUSINESS"

    const-string/jumbo v2, "business"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/Photo$PhotoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->BUSINESS:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 33
    new-instance v0, Lcom/yelp/android/serializable/Photo$PhotoType;

    const-string/jumbo v1, "EVENT"

    const-string/jumbo v2, "event"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/Photo$PhotoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->EVENT:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 34
    new-instance v0, Lcom/yelp/android/serializable/Photo$PhotoType;

    const-string/jumbo v1, "USER_PROFILE"

    const-string/jumbo v2, "user_profile"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/serializable/Photo$PhotoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 35
    new-instance v0, Lcom/yelp/android/serializable/Photo$PhotoType;

    const-string/jumbo v1, "USER_PROFILE_PRIMARY"

    const-string/jumbo v2, "user_primary_profile"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/serializable/Photo$PhotoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/serializable/Photo$PhotoType;

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->UNKNOWN:Lcom/yelp/android/serializable/Photo$PhotoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->BUSINESS:Lcom/yelp/android/serializable/Photo$PhotoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->EVENT:Lcom/yelp/android/serializable/Photo$PhotoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE:Lcom/yelp/android/serializable/Photo$PhotoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->$VALUES:[Lcom/yelp/android/serializable/Photo$PhotoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/serializable/Photo$PhotoType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Lcom/yelp/android/serializable/Photo$PhotoType;
    .locals 1

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->UNKNOWN:Lcom/yelp/android/serializable/Photo$PhotoType;

    .line 56
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->BUSINESS:Lcom/yelp/android/serializable/Photo$PhotoType;

    iget-object v0, v0, Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->BUSINESS:Lcom/yelp/android/serializable/Photo$PhotoType;

    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->EVENT:Lcom/yelp/android/serializable/Photo$PhotoType;

    iget-object v0, v0, Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->EVENT:Lcom/yelp/android/serializable/Photo$PhotoType;

    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE:Lcom/yelp/android/serializable/Photo$PhotoType;

    iget-object v0, v0, Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE:Lcom/yelp/android/serializable/Photo$PhotoType;

    goto :goto_0

    .line 53
    :cond_3
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    iget-object v0, v0, Lcom/yelp/android/serializable/Photo$PhotoType;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    goto :goto_0

    .line 56
    :cond_4
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->UNKNOWN:Lcom/yelp/android/serializable/Photo$PhotoType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Photo$PhotoType;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/yelp/android/serializable/Photo$PhotoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo$PhotoType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Photo$PhotoType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/yelp/android/serializable/Photo$PhotoType;->$VALUES:[Lcom/yelp/android/serializable/Photo$PhotoType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Photo$PhotoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Photo$PhotoType;

    return-object v0
.end method
