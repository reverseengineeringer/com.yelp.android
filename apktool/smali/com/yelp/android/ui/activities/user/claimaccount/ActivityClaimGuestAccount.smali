.class public Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityClaimGuestAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

.field private b:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;

.field private final c:Lcom/yelp/android/ui/activities/user/claimaccount/a$c;

.field private final d:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 135
    new-instance v0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$1;-><init>(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->c:Lcom/yelp/android/ui/activities/user/claimaccount/a$c;

    .line 161
    new-instance v0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$2;-><init>(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->d:Landroid/view/View$OnFocusChangeListener;

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;)Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->b:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 119
    const v0, 0x7f070683

    const v1, 0x7f0705c5

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->b(Landroid/content/Context;II)Landroid/text/Spannable;

    move-result-object v1

    .line 122
    const v0, 0x7f0704b3

    const v2, 0x7f0704b7

    invoke-static {p0, v0, v2}, Lcom/yelp/android/util/StringUtils;->b(Landroid/content/Context;II)Landroid/text/Spannable;

    move-result-object v2

    .line 126
    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    const v3, 0x7f07022d

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/widget/TextView;)V

    .line 133
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PlatformConfirmation;)V
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f0f0130

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformConfirmation;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f0f0131

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformConfirmation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f0f0132

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformConfirmation;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v0, 0x7f0f013e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformConfirmation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;)Lcom/yelp/android/ui/activities/user/claimaccount/a$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a:Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a:Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/a$a;->e()V

    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->setContentView(I)V

    .line 41
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/a$b;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;

    move-result-object v0

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->B()Lcom/yelp/android/appdata/m;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->C()Lcom/yelp/android/bt/b;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->c:Lcom/yelp/android/ui/activities/user/claimaccount/a$c;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/appdata/m;->a(Lcom/yelp/android/bt/b;Lcom/yelp/android/ui/activities/user/claimaccount/a$c;Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;)Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a:Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    .line 53
    iget-object v1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a:Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->setPresenter(Lcom/yelp/android/bx/a;)V

    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a()V

    .line 57
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->b()Lcom/yelp/android/serializable/PlatformConfirmation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a(Lcom/yelp/android/serializable/PlatformConfirmation;)V

    .line 60
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/av;->a(J)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$1;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->b:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->b:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->a(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->b:Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->b(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a:Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/a$a;->a()V

    .line 73
    return-void

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100025

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 87
    :sswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;->a:Lcom/yelp/android/ui/activities/user/claimaccount/a$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/a$a;->e()V

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f060d -> :sswitch_0
    .end sparse-switch
.end method
