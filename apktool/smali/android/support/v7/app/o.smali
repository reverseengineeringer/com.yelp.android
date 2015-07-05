.class Landroid/support/v7/app/o;
.super Landroid/support/v7/app/ActionBarActivityDelegateBase;
.source "ActionBarActivityDelegateHC.java"

# interfaces
.implements Landroid/support/v7/internal/widget/am;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private k:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/yelp/android/l/d;

    invoke-direct {v1, v0, p2}, Lcom/yelp/android/l/d;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v1}, Landroid/support/v7/app/o;->a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lcom/yelp/android/l/c;

    iget-object v2, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/l/c;-><init>(Landroid/content/Context;Lcom/yelp/android/m/a;)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/o;->k:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 45
    iget-object v0, p0, Landroid/support/v7/app/o;->k:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/support/v7/app/o;->k:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/am;)V

    .line 48
    :cond_0
    return-void
.end method
