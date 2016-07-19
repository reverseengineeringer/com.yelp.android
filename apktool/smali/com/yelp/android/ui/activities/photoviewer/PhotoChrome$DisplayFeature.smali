.class public final enum Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;
.super Ljava/lang/Enum;
.source "PhotoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum ADD_ACCOUNT_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum EDIT_CAPTION:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum HIDE_TOP:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum LIKE_COUNT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum MAKE_PRIMARY_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum NOT_HELPFUL:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum UPLOADED_AGO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum USER_PASSPORT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

.field public static final enum VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "HIDE_TOP"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->HIDE_TOP:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 90
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "SHARE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 92
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "LIKE"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 94
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "LIKE_COUNT"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE_COUNT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 96
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 98
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "EDIT_CAPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->EDIT_CAPTION:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 100
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "VIEW_BUSINESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 102
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "USER_PASSPORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->USER_PASSPORT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 104
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "FLAG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 106
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "COMPLIMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 108
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "NOT_HELPFUL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->NOT_HELPFUL:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 110
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "ADD_ACCOUNT_PHOTO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ADD_ACCOUNT_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 112
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "MAKE_PRIMARY_PHOTO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->MAKE_PRIMARY_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 114
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const-string/jumbo v1, "UPLOADED_AGO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->UPLOADED_AGO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 86
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->HIDE_TOP:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE_COUNT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->EDIT_CAPTION:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->USER_PASSPORT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->NOT_HELPFUL:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ADD_ACCOUNT_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->MAKE_PRIMARY_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->UPLOADED_AGO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->$VALUES:[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->$VALUES:[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    return-object v0
.end method
