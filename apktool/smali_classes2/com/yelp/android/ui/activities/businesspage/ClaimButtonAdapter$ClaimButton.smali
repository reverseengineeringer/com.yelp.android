.class public abstract enum Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;
.super Ljava/lang/Enum;
.source "ClaimButtonAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/businesspage/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ClaimButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;",
        ">;",
        "Lcom/yelp/android/ui/activities/businesspage/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

.field public static final enum BIZPAGE_TOP:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton$1;

    const-string/jumbo v1, "BIZPAGE_TOP"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->BIZPAGE_TOP:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->BIZPAGE_TOP:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    return-object v0
.end method


# virtual methods
.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isSubtitleExpanded()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
