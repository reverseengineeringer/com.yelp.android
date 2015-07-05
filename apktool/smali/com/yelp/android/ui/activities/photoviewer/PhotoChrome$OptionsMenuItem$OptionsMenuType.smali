.class public final enum Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;
.super Ljava/lang/Enum;
.source "PhotoChrome.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

.field public static final enum ADD_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

.field public static final enum COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

.field public static final enum DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

.field public static final enum EDIT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

.field public static final enum FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

.field public static final enum VIEW:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 560
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    const-string/jumbo v1, "FLAG"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    .line 561
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    .line 562
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    const-string/jumbo v1, "COMPLIMENT"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    .line 563
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    const-string/jumbo v1, "VIEW"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->VIEW:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    .line 564
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    const-string/jumbo v1, "ADD_PHOTO"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->ADD_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    .line 565
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    const-string/jumbo v1, "EDIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->EDIT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    .line 559
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->VIEW:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->ADD_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->EDIT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->$VALUES:[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

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
    .line 559
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;
    .locals 1

    .prologue
    .line 559
    const-class v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;
    .locals 1

    .prologue
    .line 559
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->$VALUES:[Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    return-object v0
.end method
