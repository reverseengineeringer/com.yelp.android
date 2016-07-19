.class public Landroid/support/v7/app/d$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/app/c$a;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/d$a;-><init>(Landroid/content/Context;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Landroid/support/v7/app/c$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/d;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    .line 282
    iput p2, p0, Landroid/support/v7/app/d$a;->b:I

    .line 283
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v0, v0, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Landroid/support/v7/app/d$a;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/c$a;->f:Ljava/lang/CharSequence;

    .line 305
    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/c$a;->i:Ljava/lang/CharSequence;

    .line 400
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p2, v0, Landroid/support/v7/app/c$a;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 401
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->p:Landroid/content/DialogInterface$OnCancelListener;

    .line 495
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 515
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->d:Landroid/graphics/drawable/Drawable;

    .line 372
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->g:Landroid/view/View;

    .line 330
    return-object p0
.end method

.method public a(Landroid/view/View;IIII)Landroid/support/v7/app/d$a;
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->w:Landroid/view/View;

    .line 845
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/c$a;->v:I

    .line 846
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/c$a;->B:Z

    .line 847
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput p2, v0, Landroid/support/v7/app/c$a;->x:I

    .line 848
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput p3, v0, Landroid/support/v7/app/c$a;->y:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput p4, v0, Landroid/support/v7/app/c$a;->z:I

    .line 850
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput p5, v0, Landroid/support/v7/app/c$a;->A:I

    .line 851
    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->t:Landroid/widget/ListAdapter;

    .line 555
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p2, v0, Landroid/support/v7/app/c$a;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->f:Ljava/lang/CharSequence;

    .line 315
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->i:Ljava/lang/CharSequence;

    .line 413
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p2, v0, Landroid/support/v7/app/c$a;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 414
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/c$a;->k:Ljava/lang/CharSequence;

    .line 426
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p2, v0, Landroid/support/v7/app/c$a;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 427
    return-object p0
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/app/d$a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->w:Landroid/view/View;

    .line 815
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput v1, v0, Landroid/support/v7/app/c$a;->v:I

    .line 816
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-boolean v1, v0, Landroid/support/v7/app/c$a;->B:Z

    .line 817
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->h:Ljava/lang/CharSequence;

    .line 350
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p1, v0, Landroid/support/v7/app/c$a;->k:Ljava/lang/CharSequence;

    .line 439
    iget-object v0, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iput-object p2, v0, Landroid/support/v7/app/c$a;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 440
    return-object p0
.end method

.method public b()Landroid/support/v7/app/d;
    .locals 4

    .prologue
    .line 882
    new-instance v0, Landroid/support/v7/app/d;

    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/d$a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/app/d;-><init>(Landroid/content/Context;IZ)V

    .line 883
    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    invoke-static {v0}, Landroid/support/v7/app/d;->a(Landroid/support/v7/app/d;)Landroid/support/v7/app/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->a(Landroid/support/v7/app/c;)V

    .line 884
    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-boolean v1, v1, Landroid/support/v7/app/c$a;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->setCancelable(Z)V

    .line 885
    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-boolean v1, v1, Landroid/support/v7/app/c$a;->o:Z

    if-eqz v1, :cond_0

    .line 886
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->setCanceledOnTouchOutside(Z)V

    .line 888
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 890
    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, p0, Landroid/support/v7/app/d$a;->a:Landroid/support/v7/app/c$a;

    iget-object v1, v1, Landroid/support/v7/app/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 893
    :cond_1
    return-object v0
.end method
