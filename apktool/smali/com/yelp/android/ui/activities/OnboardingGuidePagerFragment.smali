.class public Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "OnboardingGuidePagerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(II)Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string/jumbo v1, "splash"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string/jumbo v1, "tagline"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    new-instance v1, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;-><init>()V

    .line 44
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 51
    const v0, 0x7f030110

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "tagline"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const v1, 0x7f0f03b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "splash"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->G()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const v1, 0x7f0f00cd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/av;->a(J)Landroid/view/animation/RotateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    :cond_0
    return-object v0
.end method
