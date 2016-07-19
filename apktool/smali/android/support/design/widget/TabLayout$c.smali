.class public final Landroid/support/design/widget/TabLayout$c;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:Landroid/view/View;

.field private final f:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    .line 909
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    .line 910
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$c;
    .locals 2

    .prologue
    .line 1054
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$c;->b:Ljava/lang/CharSequence;

    .line 1055
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    if-ltz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    iget v1, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;I)V

    .line 1058
    :cond_0
    return-object p0
.end method

.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->e:Landroid/view/View;

    return-object v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 1006
    iput p1, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    .line 1007
    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(I)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$c;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    return v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$c;)V

    .line 1078
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->c:Ljava/lang/CharSequence;

    return-object v0
.end method
