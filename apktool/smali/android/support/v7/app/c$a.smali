.class public Landroid/support/v7/app/c$a;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/c$a$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:[Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public H:Landroid/database/Cursor;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public L:Landroid/support/v7/app/c$a$a;

.field public M:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Landroid/content/DialogInterface$OnCancelListener;

.field public q:Landroid/content/DialogInterface$OnDismissListener;

.field public r:Landroid/content/DialogInterface$OnKeyListener;

.field public s:[Ljava/lang/CharSequence;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/content/DialogInterface$OnClickListener;

.field public v:I

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput v0, p0, Landroid/support/v7/app/c$a;->c:I

    .line 619
    iput v0, p0, Landroid/support/v7/app/c$a;->e:I

    .line 642
    iput-boolean v0, p0, Landroid/support/v7/app/c$a;->B:Z

    .line 646
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/c$a;->F:I

    .line 654
    iput-boolean v1, p0, Landroid/support/v7/app/c$a;->M:Z

    .line 671
    iput-object p1, p0, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    .line 672
    iput-boolean v1, p0, Landroid/support/v7/app/c$a;->o:Z

    .line 673
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/c$a;->b:Landroid/view/LayoutInflater;

    .line 674
    return-void
.end method

.method private b(Landroid/support/v7/app/c;)V
    .locals 10

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 734
    iget-object v0, p0, Landroid/support/v7/app/c$a;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Landroid/support/v7/app/c;->i(Landroid/support/v7/app/c;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 737
    iget-boolean v0, p0, Landroid/support/v7/app/c$a;->D:Z

    if-eqz v0, :cond_5

    .line 738
    iget-object v0, p0, Landroid/support/v7/app/c$a;->H:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 739
    new-instance v0, Landroid/support/v7/app/c$a$1;

    iget-object v2, p0, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v7/app/c;->j(Landroid/support/v7/app/c;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/app/c$a;->s:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/c$a$1;-><init>(Landroid/support/v7/app/c$a;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 793
    :goto_0
    iget-object v1, p0, Landroid/support/v7/app/c$a;->L:Landroid/support/v7/app/c$a$a;

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Landroid/support/v7/app/c$a;->L:Landroid/support/v7/app/c$a$a;

    invoke-interface {v1, v6}, Landroid/support/v7/app/c$a$a;->a(Landroid/widget/ListView;)V

    .line 800
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/c;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 801
    iget v0, p0, Landroid/support/v7/app/c$a;->F:I

    invoke-static {p1, v0}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/c;I)I

    .line 803
    iget-object v0, p0, Landroid/support/v7/app/c$a;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_9

    .line 804
    new-instance v0, Landroid/support/v7/app/c$a$3;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/c$a$3;-><init>(Landroid/support/v7/app/c$a;Landroid/support/v7/app/c;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 827
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/c$a;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Landroid/support/v7/app/c$a;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 831
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/c$a;->E:Z

    if-eqz v0, :cond_a

    .line 832
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 836
    :cond_3
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/c;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 837
    return-void

    .line 754
    :cond_4
    new-instance v1, Landroid/support/v7/app/c$a$2;

    iget-object v3, p0, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/c$a;->H:Landroid/database/Cursor;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/c$a$2;-><init>(Landroid/support/v7/app/c$a;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Landroid/support/v7/app/c;)V

    move-object v0, v1

    goto :goto_0

    .line 782
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/c$a;->E:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/support/v7/app/c;->k(Landroid/support/v7/app/c;)I

    move-result v2

    .line 784
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/c$a;->H:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 785
    iget-object v0, p0, Landroid/support/v7/app/c$a;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/app/c$a;->t:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 782
    :cond_6
    invoke-static {p1}, Landroid/support/v7/app/c;->l(Landroid/support/v7/app/c;)I

    move-result v2

    goto :goto_3

    .line 785
    :cond_7
    new-instance v0, Landroid/support/v7/app/c$c;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/c$a;->s:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/support/v7/app/c$c;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 788
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/c$a;->H:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v7/app/c$a;->I:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 813
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/c$a;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_1

    .line 814
    new-instance v0, Landroid/support/v7/app/c$a$4;

    invoke-direct {v0, p0, v6, p1}, Landroid/support/v7/app/c$a$4;-><init>(Landroid/support/v7/app/c$a;Landroid/widget/ListView;Landroid/support/v7/app/c;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 833
    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/app/c$a;->D:Z

    if-eqz v0, :cond_3

    .line 834
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/support/v7/app/c;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 677
    iget-object v0, p0, Landroid/support/v7/app/c$a;->g:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 678
    iget-object v0, p0, Landroid/support/v7/app/c$a;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->b(Landroid/view/View;)V

    .line 693
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/c$a;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Landroid/support/v7/app/c$a;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->b(Ljava/lang/CharSequence;)V

    .line 696
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/c$a;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 697
    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/app/c$a;->i:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/c$a;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/c;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 700
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/c$a;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 701
    const/4 v0, -0x2

    iget-object v1, p0, Landroid/support/v7/app/c$a;->k:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/c$a;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/c;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 704
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/c$a;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 705
    const/4 v0, -0x3

    iget-object v1, p0, Landroid/support/v7/app/c$a;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/c$a;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/c;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 710
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/c$a;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/c$a;->H:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/c$a;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 711
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/app/c$a;->b(Landroid/support/v7/app/c;)V

    .line 713
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/c$a;->w:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 714
    iget-boolean v0, p0, Landroid/support/v7/app/c$a;->B:Z

    if-eqz v0, :cond_c

    .line 715
    iget-object v1, p0, Landroid/support/v7/app/c$a;->w:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/app/c$a;->x:I

    iget v3, p0, Landroid/support/v7/app/c$a;->y:I

    iget v4, p0, Landroid/support/v7/app/c$a;->z:I

    iget v5, p0, Landroid/support/v7/app/c$a;->A:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/c;->a(Landroid/view/View;IIII)V

    .line 731
    :cond_7
    :goto_1
    return-void

    .line 680
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/c$a;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 681
    iget-object v0, p0, Landroid/support/v7/app/c$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->a(Ljava/lang/CharSequence;)V

    .line 683
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/c$a;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 684
    iget-object v0, p0, Landroid/support/v7/app/c$a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 686
    :cond_a
    iget v0, p0, Landroid/support/v7/app/c$a;->c:I

    if-eqz v0, :cond_b

    .line 687
    iget v0, p0, Landroid/support/v7/app/c$a;->c:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->b(I)V

    .line 689
    :cond_b
    iget v0, p0, Landroid/support/v7/app/c$a;->e:I

    if-eqz v0, :cond_0

    .line 690
    iget v0, p0, Landroid/support/v7/app/c$a;->e:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->b(I)V

    goto :goto_0

    .line 718
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/c$a;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->c(Landroid/view/View;)V

    goto :goto_1

    .line 720
    :cond_d
    iget v0, p0, Landroid/support/v7/app/c$a;->v:I

    if-eqz v0, :cond_7

    .line 721
    iget v0, p0, Landroid/support/v7/app/c$a;->v:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/c;->a(I)V

    goto :goto_1
.end method
