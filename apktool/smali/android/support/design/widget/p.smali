.class Landroid/support/design/widget/p;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/p$e;,
        Landroid/support/design/widget/p$d;,
        Landroid/support/design/widget/p$b;,
        Landroid/support/design/widget/p$a;,
        Landroid/support/design/widget/p$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/design/widget/p$e;


# direct methods
.method constructor <init>(Landroid/support/design/widget/p$e;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    .line 113
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0}, Landroid/support/design/widget/p$e;->a()V

    .line 117
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/p$e;->a(FF)V

    .line 173
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/p$e;->a(I)V

    .line 181
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/p$e;->a(II)V

    .line 165
    return-void
.end method

.method public a(Landroid/support/design/widget/p$a;)V
    .locals 2

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    new-instance v1, Landroid/support/design/widget/p$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/p$2;-><init>(Landroid/support/design/widget/p;Landroid/support/design/widget/p$a;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p$e;->a(Landroid/support/design/widget/p$e$a;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p$e;->a(Landroid/support/design/widget/p$e$a;)V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/p$c;)V
    .locals 2

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    new-instance v1, Landroid/support/design/widget/p$1;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/p$1;-><init>(Landroid/support/design/widget/p;Landroid/support/design/widget/p$c;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p$e;->a(Landroid/support/design/widget/p$e$b;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p$e;->a(Landroid/support/design/widget/p$e$b;)V

    goto :goto_0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/p$e;->a(Landroid/view/animation/Interpolator;)V

    .line 125
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0}, Landroid/support/design/widget/p$e;->b()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0}, Landroid/support/design/widget/p$e;->c()I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0}, Landroid/support/design/widget/p$e;->d()F

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0}, Landroid/support/design/widget/p$e;->e()V

    .line 185
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/design/widget/p;->a:Landroid/support/design/widget/p$e;

    invoke-virtual {v0}, Landroid/support/design/widget/p$e;->f()F

    move-result v0

    return v0
.end method
