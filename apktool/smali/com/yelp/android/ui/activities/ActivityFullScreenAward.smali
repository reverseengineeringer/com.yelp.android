.class public Lcom/yelp/android/ui/activities/ActivityFullScreenAward;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFullScreenAward.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const-string/jumbo v1, "extra.award_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "extra.business_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "extra.user_name"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    return-object v0
.end method

.method private a()Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.award_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected getStatusBarColor(I)I
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a()Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->backgroundColorId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->setContentView(I)V

    .line 98
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a()Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    move-result-object v1

    .line 99
    const v0, 0x7f0c0157

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->awardTitle:I

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "extra.business_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f0c0158

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->iconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v0, 0x7f0c0159

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->titleId:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "extra.user_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f0c015a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->getBodyText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f0c0155

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->backgroundColorId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    const v0, 0x7f0c015b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/cf;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/cf;-><init>(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method
