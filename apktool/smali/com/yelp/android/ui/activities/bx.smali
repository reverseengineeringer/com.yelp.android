.class Lcom/yelp/android/ui/activities/bx;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bx;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bx;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 516
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
