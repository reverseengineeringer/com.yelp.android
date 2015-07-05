.class public Lcom/yelp/android/debug/DebugUiGuidelinesActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "DebugUiGuidelinesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->TEXT_STYLES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    invoke-static {p0, v0}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;->a(Landroid/content/Context;Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v1, "extra.guideline_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->GAP_SIZES:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    invoke-static {p0, v0}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;->a(Landroid/content/Context;Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->COLORS:Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    invoke-static {p0, v0}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;->a(Landroid/content/Context;Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.guideline_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;

    .line 54
    # getter for: Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->mLayoutId:I
    invoke-static {v0}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;->access$000(Lcom/yelp/android/debug/DebugUiGuidelinesActivity$GuidelineType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;->setContentView(I)V

    .line 55
    return-void
.end method
