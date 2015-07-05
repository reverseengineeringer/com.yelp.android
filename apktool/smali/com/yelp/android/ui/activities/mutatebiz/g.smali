.class Lcom/yelp/android/ui/activities/mutatebiz/g;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/g;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/g;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/g;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/g;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/g;->a:Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v3}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getAttachment()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3f8

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method
