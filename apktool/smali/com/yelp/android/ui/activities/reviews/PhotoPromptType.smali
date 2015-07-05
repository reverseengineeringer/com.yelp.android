.class public final enum Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;
.super Ljava/lang/Enum;
.source "PhotoPromptType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

.field private static final INTENT_KEY:Ljava/lang/String; = "photoprompt_type"

.field public static final enum REVIEW:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

.field public static final enum TIP:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;


# instance fields
.field private mSource:Ljava/lang/String;

.field private mTitleText:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    const-string/jumbo v1, "REVIEW"

    const v2, 0x7f0705e1

    const-string/jumbo v3, "review"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->REVIEW:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    .line 20
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    const-string/jumbo v1, "TIP"

    const v2, 0x7f0705e2

    const-string/jumbo v3, "quicktip"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->TIP:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->REVIEW:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->TIP:Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->mTitleText:I

    .line 41
    iput-object p4, p0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->mSource:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getType(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "photoprompt_type"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;

    return-object v0
.end method


# virtual methods
.method public getAdditionalParametersForIri()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 76
    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->mSource:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object v0
.end method

.method public getTitleText()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->mTitleText:I

    return v0
.end method

.method public putType(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "photoprompt_type"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method public trackAddPhotoIri()V
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ProfilePhotoPromptAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/PhotoPromptType;->mSource:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method
