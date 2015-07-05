.class public Lcom/yelp/android/ui/dialogs/ConcreteDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ConcreteDialogPreference.java"


# instance fields
.field a:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ConcreteDialogPreference;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ConcreteDialogPreference;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 32
    :cond_0
    return-void
.end method
