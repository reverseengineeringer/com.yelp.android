.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "PhotoPageAddMediaFragment.java"


# instance fields
.field private final a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/af;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/af;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string/jumbo v2, "extra.business"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const v4, 0x7f0c0461

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    const v1, 0x7f030160

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const v1, 0x7f0c045f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v2, Lcom/yelp/android/ui/activities/fa;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/activities/fa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    sget-object v1, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f0c0460

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0705e4

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v6, "extra.business"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v0
.end method
