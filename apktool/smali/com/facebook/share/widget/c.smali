.class public abstract Lcom/facebook/share/widget/c;
.super Lcom/facebook/e;
.source "ShareButtonBase.java"


# instance fields
.field private a:Lcom/facebook/share/model/ShareContent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;I)V
    .locals 7

    .prologue
    .line 45
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    invoke-virtual {p0}, Lcom/facebook/share/widget/c;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/c;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected abstract getShareOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/share/widget/c;->a:Lcom/facebook/share/model/ShareContent;

    .line 68
    return-void
.end method
