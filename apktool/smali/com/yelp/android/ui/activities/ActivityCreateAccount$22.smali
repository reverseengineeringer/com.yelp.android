.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivityCreateAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->setIsDropDownEnabled(Z)V

    .line 1888
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->D(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->C(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/InstantAutoCompleteTextView;->showDropDown()V

    .line 1890
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$22;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->c(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z

    .line 1892
    :cond_0
    return-void
.end method
