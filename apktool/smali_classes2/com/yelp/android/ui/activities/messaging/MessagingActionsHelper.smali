.class public Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;
.super Ljava/lang/Object;
.source "MessagingActionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$3;,
        Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

.field private b:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

.field private c:Lcom/yelp/android/serializable/Conversation;

.field private final d:Lcom/yelp/android/ui/dialogs/b;

.field private final e:Lcom/yelp/android/ui/dialogs/b;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$1;-><init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->d:Lcom/yelp/android/ui/dialogs/b;

    .line 167
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$2;-><init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->e:Lcom/yelp/android/ui/dialogs/b;

    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    .line 40
    iput-object p2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/serializable/e;Z)V
    .locals 0

    .prologue
    .line 152
    invoke-interface {p2, p3}, Lcom/yelp/android/serializable/e;->a(Z)V

    .line 153
    invoke-interface {p1, p2}, Lcom/yelp/android/ui/activities/messaging/a;->a(Lcom/yelp/android/serializable/e;)V

    .line 154
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->c:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    .line 68
    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    .line 69
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "flag_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->d:Lcom/yelp/android/ui/dialogs/b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "delete_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    .line 61
    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->e:Lcom/yelp/android/ui/dialogs/b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 64
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->c:Lcom/yelp/android/serializable/Conversation;

    .line 45
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/serializable/Conversation;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v4

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p2, v3, v4, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->getSuccessMessage(Landroid/content/Context;Lcom/yelp/android/serializable/e;Z)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->FLAG_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    if-ne p2, v0, :cond_2

    move v0, v1

    .line 122
    :goto_1
    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 124
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$3;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 109
    goto :goto_0

    :cond_2
    move v0, v2

    .line 118
    goto :goto_1

    .line 126
    :pswitch_0
    invoke-interface {p1, p3}, Lcom/yelp/android/ui/activities/messaging/a;->c(Lcom/yelp/android/serializable/Conversation;)V

    goto :goto_2

    .line 129
    :pswitch_1
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/serializable/e;Z)V

    goto :goto_2

    .line 132
    :pswitch_2
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/serializable/e;Z)V

    goto :goto_2

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/serializable/Conversation;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2, v3, p2, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->getErrorMessage(Landroid/content/Context;Lcom/yelp/android/serializable/e;Lcom/yelp/android/appdata/webrequests/YelpException;Z)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/l;ILcom/yelp/android/serializable/Conversation;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    packed-switch p2, :pswitch_data_0

    move v1, v0

    .line 101
    :goto_0
    return v1

    .line 75
    :pswitch_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    invoke-virtual {v2, v3, v0, v4}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 77
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationBlockUser:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;

    invoke-virtual {v2, v3, v0, v4}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b(Lcom/yelp/android/serializable/e;ZLcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V

    .line 82
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationUnblockUser:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 85
    :pswitch_2
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;-><init>()V

    .line 86
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->e:Lcom/yelp/android/ui/dialogs/b;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 87
    const-string/jumbo v2, "delete_dialog"

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    const v2, 0x7f070657

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    const v3, 0x7f0704f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->d:Lcom/yelp/android/ui/dialogs/b;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->a(Lcom/yelp/android/ui/dialogs/b;)V

    .line 98
    const-string/jumbo v2, "flag_dialog"

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f0f05ff
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
