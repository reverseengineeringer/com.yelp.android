.class Landroid/support/v7/app/a$c;
.super Lcom/yelp/android/k/c;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0, p2}, Lcom/yelp/android/k/c;-><init>(Landroid/content/Context;)V

    .line 472
    iput-object p1, p0, Landroid/support/v7/app/a$c;->a:Landroid/app/Activity;

    .line 473
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 476
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/a$c;->b(Z)V

    .line 481
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/a$c;->d(F)V

    .line 482
    return-void

    .line 478
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/a$c;->b(Z)V

    goto :goto_0
.end method
