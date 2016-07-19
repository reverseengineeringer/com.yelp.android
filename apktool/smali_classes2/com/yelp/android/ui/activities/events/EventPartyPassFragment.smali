.class public Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "EventPartyPassFragment.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;-><init>()V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string/jumbo v2, "args_fragment_title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v2, "args_party_pass_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->y()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "args_fragment_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->H_()V

    .line 62
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "args_party_pass_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment$1;-><init>(Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 80
    const v0, 0x7f10000f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->setHasOptionsMenu(Z)V

    .line 44
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->b:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->b:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 49
    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->b:Landroid/widget/ImageView;

    const v2, 0x7f070479

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->H_()V

    .line 89
    new-instance v1, Lcom/yelp/android/ui/activities/media/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/media/c;-><init>(Lcom/yelp/android/ui/activities/support/YelpFragment;)V

    .line 90
    new-array v2, v0, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->a:Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/media/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x7f0f060a
        :pswitch_0
    .end packed-switch
.end method
