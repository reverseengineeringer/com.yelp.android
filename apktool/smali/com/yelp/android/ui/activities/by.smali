.class Lcom/yelp/android/ui/activities/by;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->f(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Ljava/util/Locale;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    .line 528
    iget-object v0, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->g(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/ar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/ar;)V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/by;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "flags_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 531
    return-void
.end method
