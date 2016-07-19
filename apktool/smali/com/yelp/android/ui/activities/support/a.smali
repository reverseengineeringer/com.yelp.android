.class public Lcom/yelp/android/ui/activities/support/a;
.super Ljava/lang/Object;
.source "ShareSheetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/support/a$4;
    }
.end annotation


# instance fields
.field private a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

.field private b:Lcom/yelp/android/services/ShareFormatter;

.field private c:Lcom/flipboard/bottomsheet/commons/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/yelp/android/services/ShareFormatter;)V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const v0, 0x7f0f020c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 69
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/a;->b:Lcom/yelp/android/services/ShareFormatter;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    new-instance v1, Lcom/flipboard/bottomsheet/commons/a;

    const v2, 0x7f070575

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/support/a$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/yelp/android/ui/activities/support/a$1;-><init>(Lcom/yelp/android/ui/activities/support/a;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/flipboard/bottomsheet/commons/a;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/flipboard/bottomsheet/commons/a$e;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/support/a;->c:Lcom/flipboard/bottomsheet/commons/a;

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->c:Lcom/flipboard/bottomsheet/commons/a;

    new-instance v1, Lcom/yelp/android/ui/activities/support/a$2;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/support/a$2;-><init>(Lcom/yelp/android/ui/activities/support/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/commons/a;->setSortMethod(Ljava/util/Comparator;)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->setPeekOnDismiss(Z)V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/support/a;)Lcom/yelp/android/services/ShareFormatter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->b:Lcom/yelp/android/services/ShareFormatter;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/yelp/android/ui/activities/support/a;
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 42
    const-string/jumbo v1, "saved_share_sheet_in_view"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Lcom/yelp/android/ui/activities/support/a;

    const-string/jumbo v0, "saved_share_formatter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareFormatter;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/activities/support/a;-><init>(Landroid/app/Activity;Lcom/yelp/android/services/ShareFormatter;)V

    .line 46
    const-string/jumbo v0, "saved_share_sheet_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/support/a;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    move-object v0, v1

    .line 49
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/support/a;)Lcom/flipboard/bottomsheet/BottomSheetLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 148
    const-string/jumbo v1, "saved_share_sheet_in_view"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    const-string/jumbo v1, "saved_share_sheet_state"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getState()Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    const-string/jumbo v0, "saved_share_formatter"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a;->b:Lcom/yelp/android/services/ShareFormatter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    goto :goto_1
.end method

.method public a(Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getSheetView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/a;->c:Lcom/flipboard/bottomsheet/commons/a;

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Landroid/view/View;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/a;->a:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    new-instance v1, Lcom/yelp/android/ui/activities/support/a$3;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/support/a$3;-><init>(Lcom/yelp/android/ui/activities/support/a;Lcom/flipboard/bottomsheet/BottomSheetLayout$State;)V

    invoke-virtual {v0, v1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method
