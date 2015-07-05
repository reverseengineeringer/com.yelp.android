.class Lcom/yelp/android/ui/activities/de;
.super Lcom/yelp/android/ui/util/au;
.source "ActivityPhotoFeedbackAlerts.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/PhotoFeedback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/de;->a:Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 107
    new-instance v0, Lcom/yelp/android/ui/activities/df;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/df;-><init>(Lcom/yelp/android/ui/activities/de;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/de;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;Lcom/yelp/android/ui/activities/dd;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/de;-><init>(Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 87
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/dg;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012e

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    new-instance v0, Lcom/yelp/android/ui/activities/dg;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/dg;-><init>(Lcom/yelp/android/ui/activities/de;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/dg;

    .line 94
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/de;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/PhotoFeedback;

    .line 95
    iget-object v3, v0, Lcom/yelp/android/ui/activities/dg;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoFeedback;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 99
    iget-object v3, v0, Lcom/yelp/android/ui/activities/dg;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoFeedback;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v3, v0, Lcom/yelp/android/ui/activities/dg;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoFeedback;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 101
    iget-object v3, v0, Lcom/yelp/android/ui/activities/dg;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/de;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, v0, Lcom/yelp/android/ui/activities/dg;->a:Landroid/widget/TextView;

    const v3, 0x7f070697

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoFeedback;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PhotoFeedback;->getCondensedBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-object p2
.end method
