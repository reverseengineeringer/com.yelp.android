.class Landroid/support/v7/app/g$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Landroid/support/v7/app/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/g;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/g;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/g;Landroid/support/v7/app/g$1;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/app/g$a;-><init>(Landroid/support/v7/app/g;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/support/v7/app/g$a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcom/yelp/android/j/a$a;->homeAsUpIndicator:I

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/p;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/internal/widget/p;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/p;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/p;->b()V

    .line 142
    return-object v1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->c(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/app/g$a;->a:Landroid/support/v7/app/g;

    invoke-virtual {v0}, Landroid/support/v7/app/g;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
