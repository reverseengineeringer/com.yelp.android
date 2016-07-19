.class final enum Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;
.super Ljava/lang/Enum;
.source "ObjectDirtyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/ObjectDirtyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DirtyDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

.field public static final enum INTEGER:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

.field public static final enum PARCELABLE:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

.field public static final enum PARCELABLE_LIST:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    const-string/jumbo v1, "PARCELABLE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->PARCELABLE:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    .line 58
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->INTEGER:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    .line 59
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    const-string/jumbo v1, "PARCELABLE_LIST"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->PARCELABLE_LIST:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    sget-object v1, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->PARCELABLE:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->INTEGER:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->PARCELABLE_LIST:Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->$VALUES:[Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->$VALUES:[Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    invoke-virtual {v0}, [Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/ObjectDirtyEvent$DirtyDataType;

    return-object v0
.end method
